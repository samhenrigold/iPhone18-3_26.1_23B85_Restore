AppStoreKit::TodayCardArtworkSizedLayoutMetrics::Priority_optional __swiftcall TodayCardArtworkSizedLayoutMetrics.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.Priority.rawValue.getter()
{
  v1 = 0x6469576172747865;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1768843629;
  }
}

uint64_t sub_1E16AAE10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6469576172747865;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1768843629;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6469576172747865;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1768843629;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E16AAF04()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E16AAF9C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E16AB020(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E16AB0C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6469576172747865;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1768843629;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E16AB120()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E16AB200(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E16AB2CC(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E16AB3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E16AD794(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E16AB3D8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574756C6F736261;
  v4 = 0xEF68746469576C61;
  if (*v1 != 2)
  {
    v4 = 0xEE00657A69536C61;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001E1B57A80;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F697463617266;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.LayoutSize.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v62 = a2;
  v4 = sub_1E1AF39DC();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = a1;
  sub_1E1AF381C();
  sub_1E16ABA18();
  v25 = v59;
  sub_1E1AF36AC();
  if (v25)
  {
    (*(v60 + 8))(v62, v61);
    v26 = *(v7 + 8);
    v26(a1, v6);
    return (v26)(v23, v6);
  }

  else
  {
    v55 = v17;
    v59 = *(v7 + 8);
    v59(v23, v6);
    v28 = v64;
    if (v64 > 1u)
    {
      v56 = 0;
      v34 = v58;
      if (v64 == 2)
      {
        sub_1E1AF381C();
        v35 = sub_1E1AF379C();
        v37 = v36;
        (*(v60 + 8))(v62, v61);
        v38 = v59;
        v59(v24, v6);
        result = v38(v14, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v37 & 1) == 0)
        {
          v53 = v35;
        }
      }

      else
      {
        sub_1E1AF381C();
        v55 = sub_1E1AF379C();
        v63 = v44;
        v45 = v59;
        v59(v11, v6);
        v46 = v57;
        sub_1E1AF381C();
        v47 = sub_1E1AF379C();
        v49 = v48;
        (*(v60 + 8))(v62, v61);
        v45(v24, v6);
        result = (v45)(v46, v6);
        v54 = 0x3FF0000000000000;
        v53 = v55;
        if (v63)
        {
          v53 = 0x3FF0000000000000;
        }

        if ((v49 & 1) == 0)
        {
          v54 = v47;
        }
      }
    }

    else
    {
      if (v64)
      {
        v39 = v55;
        sub_1E1AF381C();
        v40 = sub_1E1AF379C();
        v42 = v41;
        (*(v60 + 8))(v62, v61);
        v43 = v59;
        v59(v24, v6);
        result = v43(v39, v6);
        v54 = 0;
        v53 = 0x3FF0000000000000;
        if ((v42 & 1) == 0)
        {
          v53 = v40;
        }
      }

      else
      {
        v57 = (v7 + 8);
        v29 = v20;
        (*(v7 + 16))(v20, a1, v6);
        v31 = v60;
        v30 = v61;
        v32 = v56;
        v33 = v62;
        (*(v60 + 16))(v56, v62, v61);
        v50 = sub_1E1380198(v29, v32);
        v52 = v51;
        (*(v31 + 8))(v33, v30);
        result = (v59)(a1, v6);
        v53 = *&v50;
        v54 = v52;
      }

      v34 = v58;
    }

    *v34 = v53;
    *(v34 + 8) = v54;
    *(v34 + 16) = v28;
  }

  return result;
}

unint64_t sub_1E16ABA18()
{
  result = qword_1EE1D44E8;
  if (!qword_1EE1D44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D44E8);
  }

  return result;
}

double sub_1E16ABA84()
{
  if (qword_1ECEB1188 != -1)
  {
    swift_once();
  }

  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v2 = xmmword_1ECEF4AE0;
  v1 = *&qword_1ECEF4AF0;
  *(v0 + 40) = *&qword_1ECEF4AF0;
  v3 = xmmword_1ECEF4B00;
  v4 = *&qword_1ECEF4B10;
  *(v0 + 56) = xmmword_1ECEF4B00;
  *(v0 + 72) = v4;
  v5 = xmmword_1ECEF4B20;
  *(v0 + 88) = xmmword_1ECEF4B20;
  *(v0 + 24) = v2;
  *(v0 + 120) = v1;
  *(v0 + 136) = v3;
  *(v0 + 152) = v4;
  *(v0 + 168) = v5;
  *(v0 + 104) = v2;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 264) = 1;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 376) = -1;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0;
  *(v0 + 400) = -1;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 513;
  qword_1ECEF4600 = v0;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.__allocating_init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v21 = swift_allocObject();
  v22 = *(a5 + 16);
  v23 = *(a6 + 16);
  v24 = *a13;
  *(v21 + 16) = a9;
  v25 = *a1;
  *(v21 + 40) = a1[1];
  v26 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v26;
  *(v21 + 88) = a1[4];
  *(v21 + 24) = v25;
  v27 = a2[1];
  *(v21 + 104) = *a2;
  v28 = a2[2];
  v29 = a2[3];
  *(v21 + 168) = a2[4];
  *(v21 + 152) = v29;
  *(v21 + 136) = v28;
  *(v21 + 120) = v27;
  v30 = *(a3 + 48);
  *(v21 + 216) = *(a3 + 32);
  *(v21 + 232) = v30;
  *(v21 + 248) = *(a3 + 64);
  *(v21 + 264) = *(a3 + 80);
  v31 = *(a3 + 16);
  *(v21 + 184) = *a3;
  *(v21 + 200) = v31;
  v32 = *(a4 + 16);
  *(v21 + 272) = *a4;
  *(v21 + 288) = v32;
  *(v21 + 352) = *(a4 + 80);
  v33 = *(a4 + 64);
  *(v21 + 320) = *(a4 + 48);
  *(v21 + 336) = v33;
  *(v21 + 304) = *(a4 + 32);
  *(v21 + 360) = *a5;
  *(v21 + 376) = v22;
  *(v21 + 384) = *a6;
  *(v21 + 400) = v23;
  result = *a7;
  v35 = *a8;
  *(v21 + 408) = *a7;
  *(v21 + 424) = v35;
  *(v21 + 440) = a10;
  *(v21 + 448) = a11;
  *(v21 + 456) = a12 & 1;
  *(v21 + 457) = v24;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.init(maxWidth:ltrArtLayout:rtlArtLayout:ltrAXArtLayout:rtlAXArtLayout:collapsedSize:expandedSize:sourceCropOverrideLTR:sourceCropOverrideRTL:sourceSizeOverride:priority:)(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, __int128 *a8, double a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  v14 = *(a5 + 16);
  v15 = *(a6 + 16);
  v16 = *a13;
  *(v13 + 16) = a9;
  v17 = *a1;
  *(v13 + 40) = a1[1];
  v18 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v18;
  *(v13 + 88) = a1[4];
  *(v13 + 24) = v17;
  v19 = a2[1];
  *(v13 + 104) = *a2;
  v20 = a2[2];
  v21 = a2[3];
  *(v13 + 168) = a2[4];
  *(v13 + 152) = v21;
  *(v13 + 136) = v20;
  *(v13 + 120) = v19;
  v22 = *(a3 + 48);
  *(v13 + 216) = *(a3 + 32);
  *(v13 + 232) = v22;
  *(v13 + 248) = *(a3 + 64);
  *(v13 + 264) = *(a3 + 80);
  v23 = *(a3 + 16);
  *(v13 + 184) = *a3;
  *(v13 + 200) = v23;
  v24 = *(a4 + 16);
  *(v13 + 272) = *a4;
  *(v13 + 288) = v24;
  *(v13 + 352) = *(a4 + 80);
  v25 = *(a4 + 64);
  *(v13 + 320) = *(a4 + 48);
  *(v13 + 336) = v25;
  *(v13 + 304) = *(a4 + 32);
  *(v13 + 360) = *a5;
  *(v13 + 376) = v14;
  *(v13 + 384) = *a6;
  *(v13 + 400) = v15;
  v26 = *a8;
  *(v13 + 408) = *a7;
  *(v13 + 424) = v26;
  *(v13 + 440) = a10;
  *(v13 + 448) = a11;
  *(v13 + 456) = a12 & 1;
  *(v13 + 457) = v16;
  return v13;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 88);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 152);
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 168);
  *a1 = *(v1 + 104);
  *(a1 + 16) = result;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.ltrAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = *(v1 + 264);
  result = *(v1 + 184);
  v4 = *(v1 + 200);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.rtlAXArtLayout.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  *(a1 + 32) = *(v1 + 304);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 336);
  *(a1 + 80) = *(v1 + 352);
  result = *(v1 + 272);
  v4 = *(v1 + 288);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.collapsedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 376);
  result = *(v1 + 360);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.expandedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[25].n128_u8[0];
  result = v1[24];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TodayCardArtworkSizedLayoutMetrics.layout(for:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 layoutDirection];
  if (sub_1E1AF698C())
  {
    if (v4 == 1)
    {
      v5 = (*(v2 + 352) & 1) == 0;
      v6 = 272;
      v7 = 104;
    }

    else
    {
      v5 = (*(v2 + 264) & 1) == 0;
      v6 = 184;
      v7 = 24;
    }

    if (!v5)
    {
      v6 = v7;
    }
  }

  else
  {
    v6 = 24;
    if (v4 == 1)
    {
      v6 = 104;
    }
  }

  v8 = (v2 + v6);
  result = v8[2];
  v13 = v8[3];
  v10 = v8[4];
  v11 = *v8;
  v12 = v8[1];
  *(a2 + 32) = result;
  *(a2 + 48) = v13;
  *(a2 + 64) = v10;
  *a2 = v11;
  *(a2 + 16) = v12;
  return result;
}

double TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)@<D0>(void *a1@<X8>)
{
  v3 = sub_1E1AF697C();
  v4 = (v3 & 1) == 0;
  v5 = 408;
  v6 = 416;
  if (v3)
  {
    v6 = 432;
  }

  v7 = *(v1 + v6);
  if (!v4)
  {
    v5 = 424;
  }

  *a1 = *(v1 + v5);
  a1[1] = v7;

  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.deinit()
{

  return v0;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1E16AC054(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  sub_1E16AD7E0(a2, a3);
  if (!v3)
  {
    *a1 = v5;
  }
}

uint64_t Array<A>.bestArtworkLayout(for:prioritizing:traitCollection:)@<X0>(char *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a1;
  Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(&v8, a3, a5);
  TodayCardArtworkSizedLayoutMetrics.layout(for:)(a2, a4);
}

uint64_t Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)(unsigned __int8 *a1, unint64_t a2, double a3)
{
  v5 = *a1;

  v15 = sub_1E1AA7538(v6, a2);
  sub_1E16AC69C(&v15, v5);
  v7 = v15;
  v8 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
  if (!v8)
  {
    if (*(v15 + 16))
    {
      goto LABEL_6;
    }

LABEL_11:
    v9 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E68FFD80](0, v7);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!*(v7 + 16))
    {
      goto LABEL_32;
    }

    v9 = *(v7 + 32);

    if (!v8)
    {
LABEL_15:
      v10 = *(v7 + 16);
      if (v10)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

LABEL_12:
  v10 = sub_1E1AF71CC();
  if (v10)
  {
LABEL_16:
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E68FFD80](v11, v7);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          swift_once();
LABEL_28:
          v9 = qword_1ECEF4600;

          return v9;
        }

        v12 = *(v7 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }
      }

      if (*(v12 + 16) >= a3)
      {

        return v12;
      }

      ++v11;
    }

    while (v13 != v10);
  }

LABEL_26:

  if (!v9)
  {
    if (qword_1ECEB0F80 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  return v9;
}

BOOL sub_1E16AC2E4(uint64_t *a1, uint64_t *a2, unsigned __int8 a3)
{
  v4 = 0xE900000000000065;
  v5 = *a1;
  if (*(*a1 + 457))
  {
    if (*(*a1 + 457) == 1)
    {
      v6 = 0x6469576172747865;
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = 0xE400000000000000;
      v6 = 1701736302;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1768843629;
  }

  v8 = *a2;
  v9 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v10 = 0x6469576172747865;
    }

    else
    {
      v10 = 1701736302;
    }

    if (v9 == 1)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    if (v6 != v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v6 != 1768843629)
    {
      goto LABEL_18;
    }
  }

  if (v7 == v11)
  {

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_1E1AF74AC();

  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if (!*(v8 + 457))
  {
    v14 = 0xE400000000000000;
    v13 = 1768843629;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  if (*(v8 + 457) != 1)
  {
    v14 = 0xE400000000000000;
    v13 = 1701736302;
    v15 = a3;
    if (!a3)
    {
      goto LABEL_33;
    }

LABEL_24:
    if (v15 == 1)
    {
      v16 = 0x6469576172747865;
    }

    else
    {
      v16 = 1701736302;
    }

    if (v15 == 1)
    {
      v17 = 0xE900000000000065;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    if (v13 != v16)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v13 = 0x6469576172747865;
  v14 = 0xE900000000000065;
  v15 = a3;
  if (a3)
  {
    goto LABEL_24;
  }

LABEL_33:
  v17 = 0xE400000000000000;
  if (v13 != 1768843629)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v14 == v17)
  {

    goto LABEL_37;
  }

LABEL_36:
  v18 = sub_1E1AF74AC();

  if (v18)
  {
LABEL_37:
    if (*(v8 + 457))
    {
      if (*(v8 + 457) == 1)
      {
        v19 = 0x6469576172747865;
        v20 = 0xE900000000000065;
        v21 = a3;
        if (!a3)
        {
LABEL_51:
          v23 = 0xE400000000000000;
          if (v19 != 1768843629)
          {
            goto LABEL_54;
          }

LABEL_52:
          if (v20 == v23)
          {

            goto LABEL_55;
          }

LABEL_54:
          v24 = sub_1E1AF74AC();

          if ((v24 & 1) == 0)
          {
            return *(v5 + 16) <= *(v8 + 16);
          }

LABEL_55:
          if (*(v5 + 457))
          {
            if (*(v5 + 457) == 1)
            {
              v25 = 0x6469576172747865;
              v26 = 0xE900000000000065;
              v27 = a3;
              if (!a3)
              {
LABEL_64:
                v4 = 0xE400000000000000;
                if (v25 != 1768843629)
                {
LABEL_69:
                  v28 = sub_1E1AF74AC();

                  result = 0;
                  if ((v28 & 1) == 0)
                  {
                    return result;
                  }

                  return *(v5 + 16) <= *(v8 + 16);
                }

                goto LABEL_67;
              }
            }

            else
            {
              v26 = 0xE400000000000000;
              v25 = 1701736302;
              v27 = a3;
              if (!a3)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
            v26 = 0xE400000000000000;
            v25 = 1768843629;
            v27 = a3;
            if (!a3)
            {
              goto LABEL_64;
            }
          }

          if (v27 == 1)
          {
            if (v25 != 0x6469576172747865)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v4 = 0xE400000000000000;
            if (v25 != 1701736302)
            {
              goto LABEL_69;
            }
          }

LABEL_67:
          if (v26 != v4)
          {
            goto LABEL_69;
          }

          return *(v5 + 16) <= *(v8 + 16);
        }
      }

      else
      {
        v20 = 0xE400000000000000;
        v19 = 1701736302;
        v21 = a3;
        if (!a3)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v20 = 0xE400000000000000;
      v19 = 1768843629;
      v21 = a3;
      if (!a3)
      {
        goto LABEL_51;
      }
    }

    if (v21 == 1)
    {
      v22 = 0x6469576172747865;
    }

    else
    {
      v22 = 1701736302;
    }

    if (v21 == 1)
    {
      v23 = 0xE900000000000065;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v19 != v22)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_1E16AC69C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1E196B840(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1E16AC720(v8, a2);
  return sub_1E1AF70CC();
}

void sub_1E16AC720(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[1];
  v5 = sub_1E1AF741C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
        v8 = sub_1E1AF628C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_1E16AC924(v10, v11, a1, v6, v2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1E16AC82C(0, v4, 1, a1, v2);
  }
}

uint64_t sub_1E16AC82C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = result - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v16 = v10;
    v17 = v9;
    while (1)
    {
      v19 = v11;
      v18 = *v9;

      v12 = sub_1E16AC2E4(&v19, &v18, a5);

      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v13 = *v9;
        v11 = v9[1];
        *v9 = v11;
        v9[1] = v13;
        --v9;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v17 + 1;
      v10 = v16 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1E16AC924(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = v5;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_164:
    v6 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_166;
    }

    goto LABEL_204;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v14 = *a3;
      v15 = *(*a3 + 8 * v13);
      v123 = *(*a3 + 8 * v10);
      v124 = v15;

      v121 = sub_1E16AC2E4(&v124, &v123, a5);
      if (v7)
      {

        return;
      }

      v112 = v11;

      v16 = v12 + 2;
      v110 = v12;
      v17 = 8 * v12;
      v6 = v14 + v17 + 16;
      while (v9 != v16)
      {
        v18 = *v6;
        v123 = *(v6 - 8);
        v124 = v18;

        v19 = sub_1E16AC2E4(&v124, &v123, a5);

        ++v16;
        v6 += 8;
        if ((v121 ^ v19))
        {
          v9 = v16 - 1;
          break;
        }
      }

      v11 = v112;
      if (v121)
      {
        v20 = v110;
        if (v9 < v110)
        {
          goto LABEL_198;
        }

        if (v110 < v9)
        {
          v21 = 8 * v9 - 8;
          v22 = v9;
          while (1)
          {
            if (v20 != --v22)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_202;
              }

              v24 = *(v23 + v17);
              *(v23 + v17) = *(v23 + v21);
              *(v23 + v21) = v24;
            }

            ++v20;
            v21 -= 8;
            v17 += 8;
            if (v20 >= v22)
            {
              goto LABEL_18;
            }
          }
        }

        v13 = v9;
        v12 = v110;
      }

      else
      {
LABEL_18:
        v13 = v9;
        v12 = v110;
      }
    }

    v25 = a3[1];
    if (v13 >= v25)
    {
      goto LABEL_29;
    }

    v26 = v13;
    v43 = __OFSUB__(v13, v12);
    v27 = v13 - v12;
    if (v43)
    {
      goto LABEL_194;
    }

    if (v27 >= a4)
    {
LABEL_28:
      v13 = v26;
LABEL_29:
      if (v13 < v12)
      {
        goto LABEL_193;
      }

      goto LABEL_30;
    }

    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      return;
    }

    if (v12 + a4 < v25)
    {
      v25 = v12 + a4;
    }

    if (v25 < v12)
    {
      goto LABEL_197;
    }

    if (v26 == v25)
    {
      goto LABEL_28;
    }

    v115 = v25;
    v111 = v12;
    v113 = v11;
    v108 = v7;
    v122 = *a3;
    v75 = (*a3 + 8 * v26 - 8);
    v76 = v12 - v26;
    while (2)
    {
      v117 = v75;
      v119 = v26;
      v77 = *(v122 + 8 * v26);
      v116 = v76;
      while (1)
      {
        v78 = *(v77 + 457);
        if (*(v77 + 457))
        {
          if (v78 == 1)
          {
            v79 = 0x6469576172747865;
          }

          else
          {
            v79 = 1701736302;
          }

          if (v78 == 1)
          {
            v80 = 0xE900000000000065;
          }

          else
          {
            v80 = 0xE400000000000000;
          }

          v81 = a5;
          if (!a5)
          {
LABEL_98:
            v83 = 0xE400000000000000;
            v82 = 1768843629;
            goto LABEL_99;
          }
        }

        else
        {
          v80 = 0xE400000000000000;
          v79 = 1768843629;
          v81 = a5;
          if (!a5)
          {
            goto LABEL_98;
          }
        }

        v82 = v81 == 1 ? 0x6469576172747865 : 1701736302;
        v83 = v81 == 1 ? 0xE900000000000065 : 0xE400000000000000;
LABEL_99:
        v84 = *v75;
        if (v79 == v82 && v80 == v83)
        {
        }

        else
        {
          v6 = sub_1E1AF74AC();

          if ((v6 & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v85 = 0x6469576172747865;
            v86 = 0xE900000000000065;
            v87 = a5;
            if (a5)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v86 = 0xE400000000000000;
            v85 = 1701736302;
            v87 = a5;
            if (a5)
            {
LABEL_108:
              if (v87 == 1)
              {
                v88 = 0x6469576172747865;
              }

              else
              {
                v88 = 1701736302;
              }

              if (v87 == 1)
              {
                v89 = 0xE900000000000065;
              }

              else
              {
                v89 = 0xE400000000000000;
              }

              if (v85 != v88)
              {
                goto LABEL_120;
              }

              goto LABEL_118;
            }
          }
        }

        else
        {
          v86 = 0xE400000000000000;
          v85 = 1768843629;
          v87 = a5;
          if (a5)
          {
            goto LABEL_108;
          }
        }

        v89 = 0xE400000000000000;
        if (v85 != 1768843629)
        {
          goto LABEL_120;
        }

LABEL_118:
        if (v86 == v89)
        {

          goto LABEL_121;
        }

LABEL_120:
        v6 = sub_1E1AF74AC();

        if ((v6 & 1) == 0)
        {

          if (!v122)
          {
            goto LABEL_199;
          }

          goto LABEL_156;
        }

LABEL_121:
        if (*(v84 + 457))
        {
          if (*(v84 + 457) == 1)
          {
            v90 = 0x6469576172747865;
            v91 = 0xE900000000000065;
            v92 = a5;
            if (a5)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v91 = 0xE400000000000000;
            v90 = 1701736302;
            v92 = a5;
            if (a5)
            {
LABEL_126:
              if (v92 == 1)
              {
                v93 = 0x6469576172747865;
              }

              else
              {
                v93 = 1701736302;
              }

              if (v92 == 1)
              {
                v94 = 0xE900000000000065;
              }

              else
              {
                v94 = 0xE400000000000000;
              }

              if (v90 != v93)
              {
                goto LABEL_138;
              }

              goto LABEL_136;
            }
          }
        }

        else
        {
          v91 = 0xE400000000000000;
          v90 = 1768843629;
          v92 = a5;
          if (a5)
          {
            goto LABEL_126;
          }
        }

        v94 = 0xE400000000000000;
        if (v90 != 1768843629)
        {
          goto LABEL_138;
        }

LABEL_136:
        if (v91 == v94)
        {

          goto LABEL_139;
        }

LABEL_138:
        v6 = sub_1E1AF74AC();

        if ((v6 & 1) == 0)
        {
          goto LABEL_154;
        }

LABEL_139:
        if (*(v77 + 457))
        {
          if (*(v77 + 457) == 1)
          {
            v95 = 0x6469576172747865;
            v96 = 0xE900000000000065;
            v97 = a5;
            if (!a5)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v96 = 0xE400000000000000;
            v95 = 1701736302;
            v97 = a5;
            if (!a5)
            {
LABEL_148:
              v98 = 0xE400000000000000;
              if (v95 != 1768843629)
              {
                goto LABEL_153;
              }

              goto LABEL_151;
            }
          }
        }

        else
        {
          v96 = 0xE400000000000000;
          v95 = 1768843629;
          v97 = a5;
          if (!a5)
          {
            goto LABEL_148;
          }
        }

        if (v97 == 1)
        {
          v98 = 0xE900000000000065;
          if (v95 != 0x6469576172747865)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v98 = 0xE400000000000000;
          if (v95 != 1701736302)
          {
            goto LABEL_153;
          }
        }

LABEL_151:
        if (v96 == v98)
        {

          goto LABEL_154;
        }

LABEL_153:
        v6 = sub_1E1AF74AC();

        if ((v6 & 1) == 0)
        {
          break;
        }

LABEL_154:
        v99 = *(v77 + 16);
        v100 = *(v84 + 16);

        if (v99 > v100)
        {
          goto LABEL_81;
        }

        if (!v122)
        {
          goto LABEL_199;
        }

LABEL_156:
        v101 = *v75;
        v77 = v75[1];
        *v75 = v77;
        v75[1] = v101;
        --v75;
        if (__CFADD__(v76++, 1))
        {
          goto LABEL_81;
        }
      }

LABEL_81:
      v26 = v119 + 1;
      v75 = v117 + 1;
      v76 = v116 - 1;
      if (v119 + 1 != v115)
      {
        continue;
      }

      break;
    }

    v13 = v115;
    v7 = v108;
    v12 = v111;
    v11 = v113;
    if (v115 < v111)
    {
      goto LABEL_193;
    }

LABEL_30:
    v118 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1E172D878(0, *(v11 + 16) + 1, 1, v11);
    }

    v29 = *(v11 + 16);
    v28 = *(v11 + 24);
    v30 = v29 + 1;
    v6 = v7;
    if (v29 >= v28 >> 1)
    {
      v11 = sub_1E172D878((v28 > 1), v29 + 1, 1, v11);
    }

    *(v11 + 16) = v30;
    v31 = v11 + 16 * v29;
    *(v31 + 32) = v12;
    *(v31 + 40) = v118;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_203;
    }

    if (v29)
    {
      break;
    }

LABEL_3:
    v10 = v118;
    v9 = a3[1];
    v7 = v6;
    if (v118 >= v9)
    {
      goto LABEL_164;
    }
  }

  while (1)
  {
    v32 = v30 - 1;
    if (v30 >= 4)
    {
      v37 = v11 + 32 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_180;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_181;
      }

      v44 = (v11 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_183;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_186;
      }

      if (v48 >= v40)
      {
        v66 = (v11 + 32 + 16 * v32);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_192;
        }

        if (v35 < v69)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v30 == 3)
    {
      v33 = *(v11 + 32);
      v34 = *(v11 + 40);
      v43 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      v36 = v43;
LABEL_49:
      if (v36)
      {
        goto LABEL_182;
      }

      v49 = (v11 + 16 * v30);
      v51 = *v49;
      v50 = v49[1];
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_185;
      }

      v55 = (v11 + 32 + 16 * v32);
      v57 = *v55;
      v56 = v55[1];
      v43 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v43)
      {
        goto LABEL_188;
      }

      if (__OFADD__(v53, v58))
      {
        goto LABEL_189;
      }

      if (v53 + v58 >= v35)
      {
        if (v35 < v58)
        {
          v32 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v59 = (v11 + 16 * v30);
    v61 = *v59;
    v60 = v59[1];
    v43 = __OFSUB__(v60, v61);
    v53 = v60 - v61;
    v54 = v43;
LABEL_63:
    if (v54)
    {
      goto LABEL_184;
    }

    v62 = v11 + 16 * v32;
    v64 = *(v62 + 32);
    v63 = *(v62 + 40);
    v43 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v43)
    {
      goto LABEL_187;
    }

    if (v65 < v53)
    {
      goto LABEL_3;
    }

LABEL_70:
    v70 = v32 - 1;
    if (v32 - 1 >= v30)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_200;
    }

    v71 = v11;
    v72 = *(v11 + 32 + 16 * v70);
    v73 = *(v11 + 32 + 16 * v32);
    v11 = *(v11 + 32 + 16 * v32 + 8);
    sub_1E16AD3D8((*a3 + 8 * v72), (*a3 + 8 * v73), (*a3 + 8 * v11), v7, a5);
    if (v6)
    {
      goto LABEL_174;
    }

    if (v11 < v72)
    {
      goto LABEL_178;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_1E1968F00(v71);
    }

    if (v70 >= *(v71 + 2))
    {
      goto LABEL_179;
    }

    v74 = &v71[16 * v70];
    *(v74 + 4) = v72;
    *(v74 + 5) = v11;
    v125 = v71;
    sub_1E1968E74(v32);
    v11 = v125;
    v30 = *(v125 + 16);
    if (v30 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  v11 = sub_1E1968F00(v11);
LABEL_166:
  v125 = v11;
  v103 = *(v11 + 16);
  if (v103 >= 2)
  {
    while (*a3)
    {
      v104 = *(v11 + 16 * v103);
      v105 = v11;
      v106 = *(v11 + 16 * (v103 - 1) + 32);
      v11 = *(v11 + 16 * (v103 - 1) + 40);
      sub_1E16AD3D8((*a3 + 8 * v104), (*a3 + 8 * v106), (*a3 + 8 * v11), v6, a5);
      if (v7)
      {
        goto LABEL_174;
      }

      if (v11 < v104)
      {
        goto LABEL_190;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_1E1968F00(v105);
      }

      if (v103 - 2 >= *(v105 + 2))
      {
        goto LABEL_191;
      }

      v107 = &v105[16 * v103];
      *v107 = v104;
      *(v107 + 1) = v11;
      v125 = v105;
      sub_1E1968E74(v103 - 1);
      v11 = v125;
      v103 = *(v125 + 16);
      if (v103 <= 1)
      {
        goto LABEL_174;
      }
    }

    goto LABEL_201;
  }

LABEL_174:
}

uint64_t sub_1E16AD3D8(char *__dst, uint64_t *a2, char *a3, unint64_t a4, unsigned __int8 a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;

      v18 = sub_1E16AC2E4(&v48, &v47, a5);
      if (v5)
      {

        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        return 1;
      }

      v19 = v18;

      if (!v19)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  v6 -= 8;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;

    v31 = sub_1E16AC2E4(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;

    v33 = (v6 + 8);
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    v6 -= 8;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        return 1;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      return 1;
    }
  }

  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    return 1;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

  return 1;
}

unint64_t sub_1E16AD794(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E1AF72FC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

double sub_1E16AD7E0(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_1E1AF39DC();
  v67 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  sub_1E1AF381C();
  v62 = sub_1E1AF379C();
  LODWORD(v61) = v13;
  v63 = *(v7 + 8);
  v64 = v6;
  v66 = v7 + 8;
  v63(v12, v6);
  v14 = v5;
  v68 = a1;
  sub_1E1AF381C();
  v16 = v67 + 16;
  v15 = *(v67 + 16);
  v71 = v3;
  v69 = v15;
  v15(v14, v70, v3);
  sub_1E16AE24C();
  v17 = v114;
  sub_1E1AF464C();
  if (v114[80])
  {
    if (qword_1ECEB1188 != -1)
    {
      swift_once();
    }

    v17 = &xmmword_1ECEF4AE0;
  }

  v18 = v17[3];
  v117 = v17[2];
  v118 = v18;
  v119 = v17[4];
  v19 = v17[1];
  v115 = *v17;
  v116 = v19;
  sub_1E1AF381C();
  v65 = v16;
  v69(v14, v70, v71);
  v20 = v108;
  sub_1E1AF464C();
  if (v108[80])
  {
    if (qword_1ECEB1188 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1ECEF4AE0;
  }

  v21 = v20[3];
  v111 = v20[2];
  v112 = v21;
  v113 = v20[4];
  v22 = v20[1];
  v109 = *v20;
  v110 = v22;
  if (v61)
  {
    v23 = 1.79769313e308;
  }

  else
  {
    v23 = *&v62;
  }

  v24 = v9;
  sub_1E1AF381C();
  v54 = v14;
  v25 = v70;
  v69(v14, v70, v71);
  sub_1E1AF464C();
  v98 = v92;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v96 = v90;
  v97 = v91;
  sub_1E1AF381C();
  v26 = v25;
  v27 = v69;
  v69(v14, v26, v71);
  sub_1E1AF464C();
  v104 = v86;
  v105 = v87;
  v106 = v88;
  v107 = v89;
  v102 = v84;
  v103 = v85;
  sub_1E1AF381C();
  v29 = v70;
  v28 = v71;
  v27(v14, v70, v71);
  v30 = v27;
  v59 = sub_1E16AE2A0();
  sub_1E1AF464C();
  v61 = v82;
  v62 = v81;
  v60 = v83;
  v31 = v68;
  sub_1E1AF381C();
  v30(v14, v29, v28);
  sub_1E1AF464C();
  v58 = v79;
  v59 = v78;
  v57 = v80;
  sub_1E1AF381C();
  sub_1E14479F8();
  sub_1E1AF36DC();
  v33 = v63;
  v32 = v64;
  v63(v24, v64);
  v56 = v77;
  v34 = v31;
  sub_1E1AF381C();
  sub_1E1AF36DC();
  v33(v24, v32);
  v55 = v76;
  type metadata accessor for CGSize(0);
  sub_1E1AF381C();
  v36 = v70;
  v35 = v71;
  v69(v54, v70, v71);
  sub_1E16AE2F4();
  sub_1E1AF464C();
  v37 = v73;
  v69 = v74;
  LODWORD(v65) = v75;
  sub_1E1AF381C();
  sub_1E16AE34C();
  sub_1E1AF369C();
  (*(v67 + 8))(v36, v35);
  v33(v34, v32);
  v33(v24, v32);
  v38 = v72;
  type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
  v39 = swift_allocObject();
  *(v39 + 16) = v23;
  v40 = v115;
  *(v39 + 40) = v116;
  v41 = v118;
  *(v39 + 56) = v117;
  *(v39 + 72) = v41;
  *(v39 + 88) = v119;
  *(v39 + 24) = v40;
  v42 = v109;
  *(v39 + 120) = v110;
  v43 = v112;
  *(v39 + 136) = v111;
  *(v39 + 152) = v43;
  *(v39 + 168) = v113;
  *(v39 + 104) = v42;
  v44 = v99;
  *(v39 + 216) = v98;
  *(v39 + 232) = v44;
  *(v39 + 248) = v100;
  *(v39 + 264) = v101;
  v45 = v97;
  *(v39 + 184) = v96;
  *(v39 + 200) = v45;
  *(v39 + 352) = v107;
  v46 = v106;
  *(v39 + 320) = v105;
  *(v39 + 336) = v46;
  v47 = v104;
  *(v39 + 288) = v103;
  *(v39 + 304) = v47;
  *(v39 + 272) = v102;
  v48 = v61;
  *(v39 + 360) = v62;
  *(v39 + 368) = v48;
  *(v39 + 376) = v60;
  v49 = v58;
  *(v39 + 384) = v59;
  *(v39 + 392) = v49;
  *(v39 + 400) = v57;
  v51 = v55;
  result = *&v56;
  *(v39 + 408) = v56;
  *(v39 + 424) = v51;
  v52 = v69;
  *(v39 + 440) = v37;
  *(v39 + 448) = v52;
  *(v39 + 456) = v65;
  *(v39 + 457) = v38;
  return result;
}

unint64_t sub_1E16AE040()
{
  result = qword_1ECEB7970;
  if (!qword_1ECEB7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7970);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_1E16AE1F8()
{
  result = qword_1ECEB7978;
  if (!qword_1ECEB7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7978);
  }

  return result;
}

unint64_t sub_1E16AE24C()
{
  result = qword_1EE1D9F00;
  if (!qword_1EE1D9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D9F00);
  }

  return result;
}

unint64_t sub_1E16AE2A0()
{
  result = qword_1EE1D44E0;
  if (!qword_1EE1D44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D44E0);
  }

  return result;
}

unint64_t sub_1E16AE2F4()
{
  result = qword_1EE1D2400;
  if (!qword_1EE1D2400)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2400);
  }

  return result;
}

unint64_t sub_1E16AE34C()
{
  result = qword_1EE1D44D8;
  if (!qword_1EE1D44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D44D8);
  }

  return result;
}

void UnifiedMessagingPlacement.navigationTab.getter(char *a1@<X8>)
{
  if (*v1 - 17 >= 5)
  {
    v2 = 9;
  }

  else
  {
    v2 = 0x507030402uLL >> (8 * (*v1 - 17));
  }

  *a1 = v2;
}

void NavigationTab.unifiedMessagingPlacement.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v2 >= 8)
  {
    v3 = 30;
  }

  else
  {
    v3 = 0x141E151213111E1EuLL >> (8 * v2);
  }

  *a1 = v3;
}

uint64_t VideoControls.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  sub_1E1300B24(a1, v49);
  sub_1E1AF372C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = 0;
  v45 = a1;
  v46 = a2;
  sub_1E1AF381C();
  v25 = sub_1E1AF370C();
  v26 = v25;
  v43 = v25;
  v27 = *(v6 + 8);
  v27(v20, v5);
  sub_1E1AF381C();
  v28 = sub_1E1AF370C();
  v27(v17, v5);
  v29 = v43 & 1 | 2;
  if ((v28 & 1) == 0)
  {
    v29 = v26 & 1;
  }

  if (v28 == 2)
  {
    v30 = v26 & 1;
  }

  else
  {
    v30 = v29;
  }

  sub_1E1AF381C();
  v31 = sub_1E1AF370C();
  v27(v14, v5);
  v32 = v30 | 4;
  if ((v31 & 1) == 0)
  {
    v32 = v30;
  }

  if (v31 != 2)
  {
    v30 = v32;
  }

  v33 = v47;
  sub_1E1AF381C();
  v34 = sub_1E1AF370C();
  v27(v33, v5);
  v35 = v30 | 8;
  if ((v34 & 1) == 0)
  {
    v35 = v30;
  }

  if (v34 != 2)
  {
    v30 = v35;
  }

  v36 = v48;
  sub_1E1AF381C();
  v37 = sub_1E1AF370C();
  v27(v36, v5);
  v38 = v30 | 0x10;
  if ((v37 & 1) == 0)
  {
    v38 = v30;
  }

  if (v37 == 2)
  {
    v39 = v30;
  }

  else
  {
    v39 = v38;
  }

  v40 = v50;
  sub_1E1AF381C();
  v41 = sub_1E1AF370C();
  v27(v40, v5);
  if (v41 == 2 || (v41 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = (v27)(v23, v5);
    *v46 = v39;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = (v27)(v23, v5);
    *v46 = v39 | 0x20;
  }

  return result;
}

uint64_t VideoControls.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF76DC();
  sub_1E15A1B10(MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0x6E656E696D6F7270, 0xED000079616C5074, isUniquelyReferenced_nonNull_native);
  }

  if ((v2 & 2) != 0)
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0xD000000000000010, 0x80000001E1B6F670, v6);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159B6E8(1, 0x6C50656E696C6E69, 0xEF65737561507961, v7);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0x7265626275726373, 0xE800000000000000, v9);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159B6E8(1, 0x756D6E556574756DLL, 0xEA00000000006574, v8);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    v4 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159B6E8(1, 0xD000000000000014, 0x80000001E1B6F690, v4);
  }

LABEL_9:
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3568, &qword_1E1B53050);
  sub_1E16AEB90();
  sub_1E1AF74CC();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1E16AEB90()
{
  result = qword_1ECEB7980;
  if (!qword_1ECEB7980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB3568, &qword_1E1B53050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7980);
  }

  return result;
}

unint64_t sub_1E16AEC18()
{
  result = qword_1ECEB7988;
  if (!qword_1ECEB7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7988);
  }

  return result;
}

unint64_t sub_1E16AEC70()
{
  result = qword_1ECEB7990;
  if (!qword_1ECEB7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7990);
  }

  return result;
}

unint64_t sub_1E16AECC8()
{
  result = qword_1EE1DFEF0;
  if (!qword_1EE1DFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFEF0);
  }

  return result;
}

unint64_t sub_1E16AED20()
{
  result = qword_1EE1DFEE0;
  if (!qword_1EE1DFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFEE0);
  }

  return result;
}

uint64_t ImpressionMetrics.withParentId(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1E1AF468C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  if (a2)
  {
    v24[2] = a1;
    sub_1E1AF46AC();
    v17 = sub_1E1AF467C();
    v24[0] = v18;
    v24[1] = v17;
    v25 = a3;
    v19 = *(v8 + 8);
    v19(v13, v7);
    sub_1E1AF46AC();
    sub_1E1AF465C();
    v19(v10, v7);

    sub_1E1AF466C();
    v20 = sub_1E1AF46DC();
    (*(*(v20 - 8) + 16))(v25, v3, v20);
    (*(v8 + 16))(v13, v16, v7);
    sub_1E1AF46BC();
    return (v19)(v16, v7);
  }

  else
  {
    v22 = sub_1E1AF46DC();
    v23 = *(*(v22 - 8) + 16);

    return v23(a3, v3, v22);
  }
}

uint64_t ImpressionMetrics.ID.withParentId(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_1E1AF467C();
    sub_1E1AF465C();

    return sub_1E1AF466C();
  }

  else
  {
    v6 = sub_1E1AF468C();
    v7 = *(*(v6 - 8) + 16);

    return v7(a3, v3, v6);
  }
}

void sub_1E16AF0D4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext_];
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5;
  v7 = type metadata accessor for MSOPageIntent(0);
  v8 = v6;
  *&v32 = sub_1E1AEFBDC();
  *(&v32 + 1) = v9;
  v10 = &selRef_remoteDownloadIdentifiersDidChange_;
  v11 = [v4 valueWithObject:sub_1E1AF755C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E1AF6C5C();
  v12 = (v2 + *(v7 + 24));
  v13 = v12[1];
  if (v13)
  {
    *&v32 = *v12;
    *(&v32 + 1) = v13;

    v14 = a1;
    v15 = sub_1E1AF748C();
    sub_1E1455104(&v32);
  }

  else
  {
    v16 = a1;
    v15 = 0;
  }

  v17 = [v4 valueWithObject:v15 inContext:a1];
  swift_unknownObjectRelease();

  if (!v17)
  {
    goto LABEL_21;
  }

  sub_1E1AF6C5C();
  v18 = *(v2 + *(v7 + 28));
  if (!v18)
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_16;
  }

  v19 = *(v18 + 16);
  if (v19)
  {
    v30 = v4;
    v31 = v8;
    v20 = sub_1E1545A54(v19, 0);
    v21 = sub_1E1546A64(&v32, v20 + 4, v19, v18);
    v22 = v32;
    swift_bridgeObjectRetain_n();
    sub_1E1337ECC(v22);
    if (v21 == v19)
    {
      v4 = v30;
      v8 = v31;
      v10 = &selRef_remoteDownloadIdentifiersDidChange_;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_19;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  *(&v33 + 1) = v23;
  *&v32 = v20;

  if (v23)
  {
    v24 = __swift_project_boxed_opaque_existential_1Tm(&v32, v23);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x1EEE9AC00](v24);
    v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v18 = sub_1E1AF748C();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  else
  {
    v18 = 0;
  }

LABEL_16:
  v29 = [v4 v10[3]];
  swift_unknownObjectRelease();
  if (v29)
  {
    sub_1E1AF6C5C();

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t type metadata accessor for MSOPageIntent(uint64_t a1)
{
  result = qword_1ECEB7998;
  if (!qword_1ECEB7998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E16AF4F8(uint64_t a1)
{
  sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    sub_1E16AF5A4();
    if (v2 <= 0x3F)
    {
      sub_1E16AF5F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E16AF5A4()
{
  if (!qword_1ECEB79A8)
  {
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB79A8);
    }
  }
}

void sub_1E16AF5F4(uint64_t a1)
{
  if (!qword_1ECEB79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEBBDD0, &qword_1E1B1B6B8);
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB79B0);
    }
  }
}

uint64_t sub_1E16AF734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E16AF77C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  v18 = a1[4];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1E1AF5DBC();
  v10 = sub_1E1AF5DBC();
  [v4 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

  v11 = sub_1E1AF5DBC();
  v12 = sub_1E1AF5DBC();
  v13 = sub_1E1AF015C();
  v14 = [v4 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13];

  v15 = swift_dynamicCastUnknownClass();
  if (v15)
  {
    v16 = v15;
    v18(v15, v6, v7, a2);
    return v16;
  }

  else
  {

    result = sub_1E1AF71FC();
    __break(1u);
  }

  return result;
}

void sub_1E16AF908(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v10);
  if (!(*(v11 + 16))(a2, a6, v10, v11))
  {
    v14 = 1;
    goto LABEL_5;
  }

  v12 = swift_conformsToProtocol2();
  if (!v12)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x1EEE9AC00](v16);
      v13 = sub_1E16AFCBC;
      goto LABEL_8;
    }

    v14 = 0;
LABEL_5:
    sub_1E16AFAB8();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
    return;
  }

  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1E16AFCC0;
LABEL_8:
  v17 = ComponentHeightCache.height(for:or:)(a2, v13);
  if (v9 > v17)
  {
    v17 = v9;
  }

  *a1 = v17;
}

unint64_t sub_1E16AFAB8()
{
  result = qword_1ECEB79C0;
  if (!qword_1ECEB79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB79C0);
  }

  return result;
}

void sub_1E16AFB0C(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X5>, double *a5@<X8>)
{
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v9);
  if (!(*(v10 + 16))(a1, a3, v9, v10))
  {
    v13 = 1;
    goto LABEL_5;
  }

  v11 = swift_conformsToProtocol2();
  if (!v11)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x1EEE9AC00](v16);
      v12 = sub_1E16AFDC8;
      goto LABEL_8;
    }

    v13 = 0;
LABEL_5:
    sub_1E16AFAB8();
    v14 = swift_allocError();
    *v15 = v13;
    swift_willThrow();
    *a4 = v14;
    return;
  }

  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E16AFDCC;
LABEL_8:
  *a5 = ComponentHeightCache.height(for:or:)(a1, v12);
}

uint64_t sub_1E16AFCC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for ItemLayoutContext(0);
  return (*(v2 + 16))(v4 + *(v5 + 32), v3, v1, v2);
}

unint64_t sub_1E16AFD74()
{
  result = qword_1ECEB79C8;
  if (!qword_1ECEB79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB79C8);
  }

  return result;
}

uint64_t FlowPreviewAction.__allocating_init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, char *a2, char a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_presentationContext) = v13;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a4, v15);
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
  v19 = (v12 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v12 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v30, &v27);
  if (*(&v28 + 1))
  {
    v21 = v28;
    *v20 = v27;
    *(v20 + 16) = v21;
    *(v20 + 32) = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v26[1] = v22;
    v26[2] = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v27, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v16 + 8))(a4, v15);
  sub_1E1308058(v30, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  return v12;
}

uint64_t FlowPreviewAction.init(previewViewController:presentationContext:requiresNavigationController:actionMetrics:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *a2;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_previewViewController) = a1;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_presentationContext) = v18;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit17FlowPreviewAction_requiresNavigationController) = a3;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_1E138853C(v39, &v33);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v29 + 8))(v12, v30);
    v31 = v22;
    v32 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v17 + 8))(a4, v16);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v25 = v5 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v25 + 32) = v38;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t FlowPreviewAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t FlowPreviewAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlowPreviewAction(uint64_t a1)
{
  result = qword_1EE1F1548;
  if (!qword_1EE1F1548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Color.isDark.getter()
{
  sub_1E1355E88();

  v0 = sub_1E1AF6CBC();
  [v0 _luminance];
  v2 = v1;

  return v2 < 0.5;
}

BOOL Color.isDark(threshold:)(double a1)
{
  sub_1E1355E88();

  v2 = sub_1E1AF6CBC();
  [v2 _luminance];
  v4 = v3;

  return v4 < a1;
}

uint64_t sub_1E16B0884(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v49 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v9 = (v6 - 1) & v6;
LABEL_13:
    v41 = result;
    v12 = (*(result + 48) + ((v8 | (v2 << 6)) << 6));
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    v58 = v12[2];
    v59 = v13;
    v56 = v15;
    v57 = v14;
    v16 = v12[1];
    v52 = *v12;
    v53 = v16;
    v17 = v12[3];
    v54 = v12[2];
    v55 = v17;
    v18 = a2;
    sub_1E1AF762C();
    sub_1E13C5038(&v56, v50);
    PageFacets.Facet.Option.hash(into:)(v51);
    v19 = sub_1E1AF767C();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_48:
      sub_1E13C5094(&v56);
      return 0;
    }

    v36 = v9;
    v37 = v7;
    v38 = v2;
    v39 = v3;
    v22 = ~v20;
    v23 = *(&v56 + 1);
    v48 = v57;
    v46 = v56;
    v47 = *(&v57 + 1);
    v42 = v59;
    v43 = v58;
    v44 = *(&v59 + 1);
    v45 = *(&v58 + 1);
    v40 = v18;
    v24 = *(v18 + 48);
    while (1)
    {
      v25 = (v24 + (v21 << 6));
      v26 = v25[1];
      v27 = v25[2];
      v29 = v25[3];
      v28 = v25[4];
      v30 = v25[5];
      v31 = v25[6];
      v32 = v25[7];
      if (v26)
      {
        if (!v23)
        {
          goto LABEL_16;
        }

        v33 = *v25 == v46 && v26 == v23;
        if (!v33 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v23)
      {
        goto LABEL_16;
      }

      v34 = v27 == v48 && v29 == v47;
      if (!v34 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v30)
      {
        if (!v45)
        {
          goto LABEL_16;
        }

        v35 = v28 == v43 && v30 == v45;
        if (!v35 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v45)
      {
        goto LABEL_16;
      }

      if (v32)
      {
        break;
      }

      if (!v44)
      {
        goto LABEL_45;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v49 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if (!v44 || (v31 != v42 || v32 != v44) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_45:
    sub_1E13C5094(&v56);
    a2 = v40;
    result = v41;
    v2 = v38;
    v3 = v39;
    v6 = v36;
    v7 = v37;
  }

  while (v36);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1E16B0B84(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = a1 + 56;
      v6 = 1 << *(a1 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(a1 + 56);
      v9 = (v6 + 63) >> 6;
      v10 = a2 + 56;
      v25 = v9;
      if (v8)
      {
        while (1)
        {
          v11 = __clz(__rbit64(v8));
          v27 = (v8 - 1) & v8;
LABEL_13:
          v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
          sub_1E1AF762C();
          v15 = v14 ? 7304045 : 1701736302;
          v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
          sub_1E1AF5F0C();

          v17 = sub_1E1AF767C();
          v18 = -1 << *(a2 + 32);
          v19 = v17 & ~v18;
          if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            break;
          }

          v20 = ~v18;
          while (1)
          {
            v21 = *(*(a2 + 48) + v19) ? 7304045 : 1701736302;
            v22 = *(*(a2 + 48) + v19) ? 0xE300000000000000 : 0xE400000000000000;
            if (v21 == v15 && v22 == v16)
            {
              break;
            }

            v24 = sub_1E1AF74AC();

            if (v24)
            {
              goto LABEL_35;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              return;
            }
          }

LABEL_35:
          v9 = v25;
          v3 = a1;
          v8 = v27;
          if (!v27)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v12 = v4;
        while (1)
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            return;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
          if (v13)
          {
            v11 = __clz(__rbit64(v13));
            v27 = (v13 - 1) & v13;
            goto LABEL_13;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1E16B0DAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v16 = sub_1E1AF767C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1E1AF74AC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall GuidedSearchQueryStore.adding(queries:)(Swift::OpaquePointer queries)
{

  sub_1E1922070(0, 0, queries._rawValue);
}

Swift::String_optional __swiftcall GuidedSearchQueryStore.optimizationTerm(for:tokens:)(Swift::String a1, Swift::OpaquePointer_optional tokens)
{
  rawValue = tokens.value._rawValue;
  if (!tokens.value._rawValue)
  {
LABEL_16:
    v14 = 0;
LABEL_17:
    v8 = rawValue;
    v9 = v14;
    goto LABEL_20;
  }

  if (!*(tokens.value._rawValue + 2))
  {
LABEL_15:
    rawValue = 0;
    goto LABEL_16;
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *v2;

  v17 = sub_1E13C4BB8(v7);

  v10 = *(v6 + 16);
  if (!v10)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
  v12 = (v6 + 64);
  while (v11 < *(v6 + 16))
  {
    v13 = *(v12 - 2);
    rawValue = *(v12 - 1);
    v14 = *v12;
    v15 = *(v12 - 4) == countAndFlagsBits && *(v12 - 3) == object;
    if (v15 || (v8 = sub_1E1AF74AC(), (v8 & 1) != 0))
    {

      if (sub_1E16B0DAC(v13, v17))
      {

        goto LABEL_17;
      }
    }

    ++v11;
    v12 += 5;
    if (v10 == v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t static UIColor.hex(_:)(uint64_t a1, uint64_t a2)
{
  sub_1E1355E88();

  return sub_1E1AF6C9C();
}

__n128 ProductReviewLayout.init(metrics:titleText:ratingView:dateText:authorText:bodyText:responseTitleText:responseDateText:responseBodyText:badgeText:actionViews:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12)
{
  memcpy((a9 + 368), __src, 0x260uLL);
  sub_1E1308EC0(a2, a9);
  sub_1E1308EC0(a3, a9 + 40);
  sub_1E1308EC0(a4, a9 + 80);
  sub_1E1308EC0(a5, a9 + 120);
  sub_1E1308EC0(a6, a9 + 200);
  sub_1E1308EC0(a7, a9 + 240);
  sub_1E1308EC0(a8, a9 + 280);
  sub_1E1308EC0(a10, a9 + 320);
  result = *a11;
  v21 = *(a11 + 16);
  *(a9 + 160) = *a11;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a11 + 32);
  *(a9 + 360) = a12;
  return result;
}

uint64_t ProductReviewLayout.Metrics.init(titleSpace:ratingSpace:dateSpace:authorSpace:bodyFirstLineSpace:bodySubsequentLineSpace:bodyEstimatedNumberOfLines:responseTitleSpace:responseDateSpace:responseBodyFirstLineSpace:horizontalInterViewSpace:horizontalEdgeSpace:bottomEdgeSpace:badgeSpace:actionsSpace:actionsInterItemSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11, __int128 *a12, __int128 *a13, __int128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a9 + 600) = 0;
  *(a9 + 568) = 0u;
  *(a9 + 584) = 0u;
  *(a9 + 536) = 0u;
  *(a9 + 552) = 0u;
  *(a9 + 504) = 0u;
  *(a9 + 520) = 0u;
  *(a9 + 488) = 0u;
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  sub_1E1308EC0(a3, a9 + 80);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  sub_1E1308EC0(a6, a9 + 200);
  *(a9 + 240) = a7;
  sub_1E1308EC0(a8, a9 + 248);
  sub_1E1308EC0(a10, a9 + 288);
  sub_1E1308EC0(a11, a9 + 328);
  sub_1E1308EC0(a12, a9 + 368);
  sub_1E1308EC0(a13, a9 + 408);
  sub_1E1308EC0(a14, a9 + 448);
  sub_1E13BC4E4(a15, a9 + 488);
  sub_1E13BC4E4(a16, a9 + 528);

  return sub_1E13BC4E4(a17, a9 + 568);
}

uint64_t ProductReviewLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t ProductReviewLayout.Metrics.ratingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t ProductReviewLayout.Metrics.dateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t ProductReviewLayout.Metrics.authorSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t ProductReviewLayout.Metrics.bodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t ProductReviewLayout.Metrics.bodySubsequentLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t ProductReviewLayout.Metrics.responseTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 248));

  return sub_1E1308EC0(a1, v1 + 248);
}

uint64_t ProductReviewLayout.Metrics.responseDateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 288));

  return sub_1E1308EC0(a1, v1 + 288);
}

uint64_t ProductReviewLayout.Metrics.responseBodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 328));

  return sub_1E1308EC0(a1, v1 + 328);
}

uint64_t ProductReviewLayout.Metrics.horizontalInterViewSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 368));

  return sub_1E1308EC0(a1, v1 + 368);
}

uint64_t ProductReviewLayout.Metrics.horizontalEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 408));

  return sub_1E1308EC0(a1, v1 + 408);
}

uint64_t ProductReviewLayout.Metrics.bottomEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 448));

  return sub_1E1308EC0(a1, v1 + 448);
}

double ProductReviewLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v162 = sub_1E1AF162C();
  v160 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v159 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1E1AF165C();
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v158 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF1A1C();
  v166 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v152 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v145 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v145 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v145 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v145 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v167 = &v145 - v20;
  v169 = sub_1E1AF1A6C();
  v171 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v156 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v147 = &v145 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v155 = &v145 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v145 - v27;
  v29 = sub_1E1AF745C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3[100];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 97, v33);
  sub_1E13BC274(v33);
  v170 = a1;
  sub_1E1AF12DC();
  v34 = *(v30 + 8);
  v149 = v32;
  v151 = v29;
  v150 = v30 + 8;
  v34(v32, v29);
  sub_1E134FD1C((v4 + 20), &v179, &qword_1ECEB2AD0, &unk_1E1B03790);
  v35 = MEMORY[0x1E69AB908];
  v165 = v9;
  v145 = v34;
  if (v180)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v179, v180);
    v36 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if ((v36 & 1) == 0)
    {
      v37 = 1;
LABEL_7:
      v40 = v4[3];
      v41 = v4[4];
      v42 = __swift_project_boxed_opaque_existential_1Tm(v4, v40);
      v180 = v40;
      v181 = *(*(v41 + 8) + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v179);
      (*(*(v40 - 8) + 16))(boxed_opaque_existential_0, v42, v40);
      sub_1E1300B24((v4 + 46), &v175);
      v173 = sub_1E1AF140C();
      v174 = v35;
      __swift_allocate_boxed_opaque_existential_0(v172);
      sub_1E1AF13FC();
      sub_1E1AF1A5C();
      v44 = sub_1E172D4BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v46 = v44[2];
      v45 = v44[3];
      v47 = v166;
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1E172D4BC((v45 > 1), v46 + 1, 1, v44);
      }

      v48 = v169;
      v180 = v169;
      v181 = MEMORY[0x1E69ABAA0];
      v49 = __swift_allocate_boxed_opaque_existential_0(&v179);
      v50 = v171;
      (*(v171 + 16))(v49, v28, v48);
      v44[2] = v46 + 1;
      sub_1E1308EC0(&v179, &v44[5 * v46 + 4]);
      (*(v50 + 8))(v28, v48);
      v9 = v165;
      v51 = v168;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E1308058(&v179, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

  v38 = [v170 traitCollection];
  v39 = sub_1E1AF698C();

  if (v39)
  {
    v37 = 0;
    goto LABEL_7;
  }

  v52 = v4[95];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 92, v52);
  v53 = v149;
  sub_1E13BC274(v52);
  sub_1E1AF12DC();
  v34(v53, v151);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF11CC();
  v55 = v54;
  v57 = v56;
  __swift_project_boxed_opaque_existential_1Tm(v4 + 46, v4[49]);
  sub_1E1AF12FC();
  v180 = MEMORY[0x1E69E7DE0];
  v181 = MEMORY[0x1E69AB858];
  *&v179 = v55 - v57 + v58;
  v59 = v167;
  sub_1E1AF1A2C();
  v44 = sub_1E172D4BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v61 = v44[2];
  v60 = v44[3];
  if (v61 >= v60 >> 1)
  {
    v44 = sub_1E172D4BC((v60 > 1), v61 + 1, 1, v44);
  }

  v47 = v166;
  v51 = v168;
  v180 = v9;
  v181 = MEMORY[0x1E69ABA90];
  v62 = __swift_allocate_boxed_opaque_existential_0(&v179);
  (*(v47 + 16))(v62, v59, v9);
  v44[2] = v61 + 1;
  sub_1E1308EC0(&v179, &v44[5 * v61 + 4]);
  (*(v47 + 8))(v59, v9);
  v37 = 0;
LABEL_13:
  sub_1E1300B24((v4 + 51), &v179);
  sub_1E1AF1A2C();
  v64 = v44[2];
  v63 = v44[3];
  if (v64 >= v63 >> 1)
  {
    v44 = sub_1E172D4BC((v63 > 1), v64 + 1, 1, v44);
  }

  v65 = MEMORY[0x1E69AB908];
  v180 = v9;
  v181 = MEMORY[0x1E69ABA90];
  v66 = __swift_allocate_boxed_opaque_existential_0(&v179);
  v67 = *(v47 + 16);
  v164 = v47 + 16;
  v168 = v67;
  (v67)(v66, v51, v9);
  v44[2] = v64 + 1;
  sub_1E1308EC0(&v179, &v44[5 * v64 + 4]);
  v69 = *(v47 + 8);
  v68 = v47 + 8;
  v167 = v69;
  (v69)(v51, v9);
  v178 = v44;
  if (v37)
  {
    sub_1E134FD1C((v4 + 107), &v179, &unk_1ECEB47F0, &qword_1E1B05780);
    if (v180)
    {
      sub_1E1308EC0(&v179, &v175);
    }

    else
    {
      sub_1E1300B24((v4 + 61), &v175);
      if (v180)
      {
        sub_1E1308058(&v179, &unk_1ECEB47F0, &qword_1E1B05780);
      }
    }

    v180 = v9;
    v181 = MEMORY[0x1E69ABA90];
    __swift_allocate_boxed_opaque_existential_0(&v179);
    sub_1E1AF1A2C();
    v178 = v44;
    v71 = v44[2];
    v70 = v44[3];
    if (v71 >= v70 >> 1)
    {
      v44 = sub_1E172D4BC((v70 > 1), v71 + 1, 1, v44);
      v178 = v44;
    }

    v72 = v180;
    v73 = v181;
    v74 = __swift_mutable_project_boxed_opaque_existential_1(&v179, v180);
    v75 = MEMORY[0x1EEE9AC00](v74);
    v77 = &v145 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v77, v75);
    sub_1E16B64D0(v71, v77, &v178, v72, v73);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    v178 = v44;
  }

  v79 = MEMORY[0x1E69ABAA0];
  v80 = [v170 traitCollection];
  v81 = sub_1E1AF698C();

  v82 = v155;
  if (v81)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0, &unk_1E1B038F0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1E1B02CD0;
    sub_1E1300B24((v4 + 56), &v179);
    *(v83 + 56) = v9;
    v84 = MEMORY[0x1E69ABA90];
    *(v83 + 64) = MEMORY[0x1E69ABA90];
    __swift_allocate_boxed_opaque_existential_0((v83 + 32));
    sub_1E1AF1A2C();
    sub_1E1300B24((v4 + 61), &v179);
    *(v83 + 96) = v9;
    *(v83 + 104) = v84;
    __swift_allocate_boxed_opaque_existential_0((v83 + 72));
    sub_1E1AF1A2C();
    sub_1E172830C(v83);
    v44 = v178;
  }

  v85 = v4[28];
  v86 = v4[29];
  v87 = __swift_project_boxed_opaque_existential_1Tm(v4 + 25, v85);
  v180 = v85;
  v181 = *(*(v86 + 8) + 8);
  v88 = __swift_allocate_boxed_opaque_existential_0(&v179);
  (*(*(v85 - 8) + 16))(v88, v87, v85);
  sub_1E1300B24((v4 + 66), &v175);
  v154 = sub_1E1AF140C();
  v173 = v154;
  v174 = v65;
  __swift_allocate_boxed_opaque_existential_0(v172);
  sub_1E1AF13FC();
  sub_1E1AF1A5C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_1E172D4BC(0, v44[2] + 1, 1, v44);
  }

  v90 = v44[2];
  v89 = v44[3];
  if (v90 >= v89 >> 1)
  {
    v44 = sub_1E172D4BC((v89 > 1), v90 + 1, 1, v44);
  }

  v91 = v169;
  v180 = v169;
  v181 = v79;
  v92 = __swift_allocate_boxed_opaque_existential_0(&v179);
  v93 = v171;
  v153 = *(v171 + 16);
  v153(v92, v82, v91);
  v44[2] = v90 + 1;
  sub_1E1308EC0(&v179, &v44[5 * v90 + 4]);
  v94 = *(v93 + 8);
  v171 = v93 + 8;
  v155 = v94;
  (v94)(v82, v91);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 40, v4[43]);
  if (sub_1E1AF117C())
  {
    v95 = v165;
  }

  else
  {
    v166 = v68;
    v96 = v170;
    v97 = [v170 traitCollection];
    v98 = sub_1E1AF698C();

    v95 = v165;
    if (v98)
    {
      v99 = v4[33];
      v100 = v4[34];
      v101 = __swift_project_boxed_opaque_existential_1Tm(v4 + 30, v99);
      v180 = v99;
      v181 = *(*(v100 + 8) + 8);
      v102 = __swift_allocate_boxed_opaque_existential_0(&v179);
      (*(*(v99 - 8) + 16))(v102, v101, v99);
      sub_1E1300B24((v4 + 77), &v175);
      v173 = v154;
      v174 = v65;
      __swift_allocate_boxed_opaque_existential_0(v172);
      sub_1E1AF13FC();
      sub_1E1AF1A5C();
      v104 = v44[2];
      v103 = v44[3];
      if (v104 >= v103 >> 1)
      {
        v44 = sub_1E172D4BC((v103 > 1), v104 + 1, 1, v44);
      }

      v105 = v170;
      v106 = v169;
      v180 = v169;
      v181 = MEMORY[0x1E69ABAA0];
      v107 = __swift_allocate_boxed_opaque_existential_0(&v179);
      v108 = v147;
      v153(v107, v147, v106);
      v44[2] = v104 + 1;
      sub_1E1308EC0(&v179, &v44[5 * v104 + 4]);
      (v155)(v108, v106);
    }

    else
    {
      v109 = v4[95];
      __swift_project_boxed_opaque_existential_1Tm(v4 + 92, v109);
      v110 = v149;
      sub_1E13BC274(v109);
      sub_1E1AF12DC();
      v145(v110, v151);
      __swift_project_boxed_opaque_existential_1Tm(v4 + 35, v4[38]);
      sub_1E1AF11CC();
      __swift_project_boxed_opaque_existential_1Tm(v4 + 30, v4[33]);
      sub_1E1AF11CC();
      v112 = v111;
      v114 = v113;
      __swift_project_boxed_opaque_existential_1Tm(v4 + 77, v4[80]);
      sub_1E1AF12FC();
      v180 = MEMORY[0x1E69E7DE0];
      v181 = MEMORY[0x1E69AB858];
      *&v179 = v112 - v114 + v115;
      v116 = v146;
      sub_1E1AF1A2C();
      v118 = v44[2];
      v117 = v44[3];
      v105 = v96;
      if (v118 >= v117 >> 1)
      {
        v44 = sub_1E172D4BC((v117 > 1), v118 + 1, 1, v44);
      }

      v180 = v95;
      v181 = MEMORY[0x1E69ABA90];
      v119 = __swift_allocate_boxed_opaque_existential_0(&v179);
      (v168)(v119, v116, v95);
      v44[2] = v118 + 1;
      sub_1E1308EC0(&v179, &v44[5 * v118 + 4]);
      (v167)(v116, v95);
    }

    v120 = [v105 traitCollection];
    v121 = sub_1E1AF698C();

    if (v121)
    {
      sub_1E1300B24((v4 + 82), &v179);
      sub_1E1AF1A2C();
      v123 = v44[2];
      v122 = v44[3];
      if (v123 >= v122 >> 1)
      {
        v44 = sub_1E172D4BC((v122 > 1), v123 + 1, 1, v44);
      }

      v180 = v95;
      v181 = MEMORY[0x1E69ABA90];
      v124 = __swift_allocate_boxed_opaque_existential_0(&v179);
      v125 = v148;
      (v168)(v124, v148, v95);
      v44[2] = v123 + 1;
      sub_1E1308EC0(&v179, &v44[5 * v123 + 4]);
      (v167)(v125, v95);
    }

    v126 = v4[43];
    v127 = v4[44];
    v128 = __swift_project_boxed_opaque_existential_1Tm(v4 + 40, v126);
    v180 = v126;
    v181 = *(*(v127 + 8) + 8);
    v129 = __swift_allocate_boxed_opaque_existential_0(&v179);
    (*(*(v126 - 8) + 16))(v129, v128, v126);
    sub_1E1300B24((v4 + 87), &v175);
    v173 = v154;
    v174 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(v172);
    sub_1E1AF13FC();
    sub_1E1AF1A5C();
    v131 = v44[2];
    v130 = v44[3];
    if (v131 >= v130 >> 1)
    {
      v44 = sub_1E172D4BC((v130 > 1), v131 + 1, 1, v44);
    }

    v132 = v169;
    v180 = v169;
    v181 = MEMORY[0x1E69ABAA0];
    v133 = __swift_allocate_boxed_opaque_existential_0(&v179);
    v134 = v156;
    v153(v133, v156, v132);
    v44[2] = v131 + 1;
    sub_1E1308EC0(&v179, &v44[5 * v131 + 4]);
    (v155)(v134, v132);
  }

  sub_1E1300B24((v4 + 102), &v179);
  v135 = v157;
  sub_1E1AF1A2C();
  v137 = v44[2];
  v136 = v44[3];
  if (v137 >= v136 >> 1)
  {
    v44 = sub_1E172D4BC((v136 > 1), v137 + 1, 1, v44);
  }

  v180 = v95;
  v181 = MEMORY[0x1E69ABA90];
  v138 = __swift_allocate_boxed_opaque_existential_0(&v179);
  (v168)(v138, v135, v95);
  v44[2] = v137 + 1;
  sub_1E1308EC0(&v179, &v44[5 * v137 + 4]);
  (v167)(v135, v95);
  sub_1E134FD1C((v4 + 112), &v175, &unk_1ECEB47F0, &qword_1E1B05780);
  if (v176)
  {
    sub_1E1308EC0(&v175, &v179);
    sub_1E1300B24(&v179, &v175);
    v139 = v152;
    sub_1E1AF1A2C();
    v141 = v44[2];
    v140 = v44[3];
    if (v141 >= v140 >> 1)
    {
      v44 = sub_1E172D4BC((v140 > 1), v141 + 1, 1, v44);
    }

    __swift_destroy_boxed_opaque_existential_1(&v179);
    v176 = v95;
    v177 = MEMORY[0x1E69ABA90];
    v142 = __swift_allocate_boxed_opaque_existential_0(&v175);
    (v168)(v142, v139, v95);
    v44[2] = v141 + 1;
    sub_1E1308EC0(&v175, &v44[5 * v141 + 4]);
    (v167)(v139, v95);
  }

  else
  {
    sub_1E1308058(&v175, &unk_1ECEB47F0, &qword_1E1B05780);
  }

  (*(v160 + 104))(v159, *MEMORY[0x1E69AB970], v162);
  v143 = v158;
  sub_1E1AF163C();
  sub_1E1AF161C();
  (*(v161 + 8))(v143, v163);
  return a2;
}

uint64_t ProductReviewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v41 = a2;
  v40 = sub_1E1AF1D6C();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF111C();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF745C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v6 + 800);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 776), v22);
  sub_1E13BC274(v22);
  sub_1E1AF12DC();
  (*(v19 + 8))(v21, v18);
  sub_1E1AF6B0C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [a1 traitCollection];
  v32 = sub_1E1AF698C();

  if (v32)
  {
    sub_1E16B3748(a1, v17);
  }

  else
  {
    sub_1E16B48B8(a1, v17, v24, v26, v28, v30);
  }

  sub_1E1AF10EC();
  sub_1E1AF10EC();
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  CGRectGetWidth(v42);
  sub_1E1AF109C();
  sub_1E1AF110C();
  sub_1E1AF1D2C();
  v33 = *(v37 + 8);
  v34 = v40;
  v33(v14, v40);
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v33(v14, v34);
  sub_1E1AF107C();
  return (*(v38 + 8))(v17, v39);
}

uint64_t sub_1E16B3748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v107 = a2;
  v103 = sub_1E1AF18BC();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1E1AF18DC();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1E1AF189C();
  v9 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E1AF184C();
  v123 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E1AF188C();
  v13 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0, &qword_1E1B02A80);
  v116 = *(v9 + 72);
  v94 = v9;
  v17 = *(v9 + 80);
  v18 = (v17 + 32) & ~v17;
  v100 = 2 * v116;
  v98 = v17;
  v99 = v16;
  v19 = swift_allocObject();
  v97 = v19;
  *(v19 + 16) = xmmword_1E1B02CD0;
  v112 = v18;
  v114 = (v19 + v18);
  v20 = v6;
  v21 = v6[3];
  v22 = v20[4];
  v96 = v20;
  v23 = __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  v131 = v21;
  v132 = *(v22 + 8);
  v24 = __swift_allocate_boxed_opaque_existential_0(&v130);
  (*(*(v21 - 8) + 16))(v24, v23, v21);
  v122 = *MEMORY[0x1E69ABA08];
  v115 = *(v13 + 104);
  v115(v15);
  *&v127 = MEMORY[0x1E69E7CC0];
  v121 = sub_1E1425840();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
  v119 = sub_1E1383E14();
  v26 = v110;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v28 = v123 + 8;
  v27 = *(v123 + 8);
  v27(v12, v26);
  v29 = *(v13 + 8);
  v30 = v111;
  v29(v15, v111);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v117 = v13 + 104;
  (v115)(v15, v122, v30);
  v130 = MEMORY[0x1E69E7CC0];
  v113 = v25;
  v31 = v26;
  v32 = v96;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v109 = v12;
  v33 = v12;
  v34 = v97;
  v123 = v28;
  v120 = v27;
  v27(v33, v31);
  v35 = v111;
  v118 = v13 + 8;
  v114 = v29;
  (v29)(v15);
  v133 = v34;
  sub_1E134FD1C((v32 + 20), &v127, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (!v128)
  {
    sub_1E1308058(&v127, &qword_1ECEB2AD0, &unk_1E1B03790);
    v36 = v35;
    goto LABEL_5;
  }

  sub_1E1308EC0(&v127, &v130);
  __swift_project_boxed_opaque_existential_1Tm(&v130, v131);
  v36 = v35;
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(&v130);
LABEL_5:
    v37 = v112;
    goto LABEL_13;
  }

  v38 = v131;
  v39 = v132;
  v40 = __swift_project_boxed_opaque_existential_1Tm(&v130, v131);
  v128 = v38;
  v129 = *(v39 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v127);
  (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v40, v38);
  sub_1E134FD1C((v32 + 107), &v124, &unk_1ECEB47F0, &qword_1E1B05780);
  v37 = v112;
  if (v125)
  {
    sub_1E1308EC0(&v124, &v126);
    v42 = v93;
  }

  else
  {
    sub_1E1300B24((v32 + 61), &v126);
    v42 = v93;
    if (v125)
    {
      sub_1E1308058(&v124, &unk_1ECEB47F0, &qword_1E1B05780);
    }
  }

  (v115)(v15, v122, v35);
  *&v124 = MEMORY[0x1E69E7CC0];
  v43 = v109;
  v44 = v110;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v120(v43, v44);
  v114(v15, v36);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v46 = v34[2];
  v45 = v34[3];
  if (v46 >= v45 >> 1)
  {
    v34 = sub_1E172D494((v45 > 1), v46 + 1, 1, v34);
  }

  v34[2] = v46 + 1;
  (*(v94 + 32))(v34 + v37 + v46 * v116, v42, v95);
  v133 = v34;
  __swift_destroy_boxed_opaque_existential_1(&v130);
LABEL_13:
  v47 = swift_allocObject();
  v99 = v47;
  *(v47 + 16) = xmmword_1E1B070F0;
  v112 = v47 + v37;
  v48 = v32[13];
  v49 = v32[14];
  v50 = __swift_project_boxed_opaque_existential_1Tm(v32 + 10, v48);
  v131 = v48;
  v132 = *(v49 + 8);
  v51 = __swift_allocate_boxed_opaque_existential_0(&v130);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v52 = v15;
  v53 = v15;
  v54 = v36;
  v55 = v36;
  v56 = v115;
  (v115)(v53, v122, v55);
  *&v127 = MEMORY[0x1E69E7CC0];
  v57 = v109;
  v58 = v110;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v59 = v52;
  v120(v57, v58);
  v114(v52, v54);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v60 = v32[18];
  v61 = v32[19];
  v62 = __swift_project_boxed_opaque_existential_1Tm(v32 + 15, v60);
  v131 = v60;
  v132 = *(v61 + 8);
  v63 = __swift_allocate_boxed_opaque_existential_0(&v130);
  (*(*(v60 - 8) + 16))(v63, v62, v60);
  (v56)(v59, v122, v54);
  *&v127 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v120(v57, v58);
  v114(v59, v54);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v64 = v32[28];
  v65 = v32[29];
  v66 = __swift_project_boxed_opaque_existential_1Tm(v32 + 25, v64);
  v131 = v64;
  v132 = *(v65 + 8);
  v67 = __swift_allocate_boxed_opaque_existential_0(&v130);
  (*(*(v64 - 8) + 16))(v67, v66, v64);
  v68 = v122;
  v69 = v111;
  (v115)(v59, v122, v111);
  *&v127 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v120(v57, v58);
  v114(v59, v69);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v100 = 3 * v116;
  v70 = v32[33];
  v71 = v32[34];
  v72 = v69;
  v73 = __swift_project_boxed_opaque_existential_1Tm(v32 + 30, v70);
  v131 = v70;
  v132 = *(v71 + 8);
  v74 = __swift_allocate_boxed_opaque_existential_0(&v130);
  (*(*(v70 - 8) + 16))(v74, v73, v70);
  v75 = v72;
  v76 = v72;
  v77 = v115;
  (v115)(v59, v68, v76);
  *&v127 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v120(v57, v58);
  v114(v59, v75);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v100 = 4 * v116;
  v78 = v32[38];
  v79 = v32[39];
  v80 = __swift_project_boxed_opaque_existential_1Tm(v32 + 35, v78);
  v131 = v78;
  v132 = *(v79 + 8);
  v81 = __swift_allocate_boxed_opaque_existential_0(&v130);
  (*(*(v78 - 8) + 16))(v81, v80, v78);
  v82 = v111;
  (v77)(v59, v122, v111);
  *&v127 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v83 = v100;
  sub_1E1AF186C();
  v120(v57, v58);
  v84 = v82;
  v85 = v114;
  v114(v59, v82);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  v116 += v83;
  v86 = v32[43];
  v87 = v32[44];
  v88 = __swift_project_boxed_opaque_existential_1Tm(v32 + 40, v86);
  v131 = v86;
  v132 = *(v87 + 8);
  v89 = __swift_allocate_boxed_opaque_existential_0(&v130);
  (*(*(v86 - 8) + 16))(v89, v88, v86);
  (v115)(v59, v122, v84);
  *&v127 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v120(v57, v58);
  v85(v59, v84);
  __swift_destroy_boxed_opaque_existential_1(&v130);
  sub_1E17284F8(v99);
  (*(v101 + 104))(v104, *MEMORY[0x1E69ABA28], v103);
  v131 = sub_1E1AF140C();
  v132 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v130);
  sub_1E1AF13FC();
  v90 = v102;
  sub_1E1AF18CC();
  sub_1E1AF182C();
  return (*(v105 + 8))(v90, v106);
}

void sub_1E16B48B8(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v231 = a6;
  v222 = COERCE_DOUBLE(sub_1E1AF1D6C());
  v215 = *(*&v222 - 8);
  MEMORY[0x1EEE9AC00](*&v222);
  v219 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_1E1AF111C();
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v205 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  *&v228 = &v200 - v16;
  MEMORY[0x1EEE9AC00](v17);
  *&MinX = &v200 - v18;
  MEMORY[0x1EEE9AC00](v19);
  *&v207 = &v200 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v200 - v22;
  v220 = sub_1E1AF1CAC();
  v24 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v202 = &v200 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v213 = &v200 - v27;
  v216 = sub_1E1AF1CBC();
  v214 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v204 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v225 = &v200 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v200 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v203 = &v200 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v210 = (&v200 - v37);
  v223 = sub_1E1AF745C();
  v38 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223 - 8);
  v212 = &v200 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v229 = &v200 - v41;
  sub_1E134FD1C(v7 + 160, &v238, &qword_1ECEB2AD0, &unk_1E1B03790);
  v42 = MEMORY[0x1E69E7048];
  v43 = MEMORY[0x1E69E7040];
  v44 = MEMORY[0x1E69ABB80];
  v224 = a5;
  v208 = a2;
  v227 = *&v38;
  v206 = v24;
  v221 = a1;
  v230 = a4;
  if (!v239)
  {
    sub_1E1308058(&v238, &qword_1ECEB2AD0, &unk_1E1B03790);
    goto LABEL_5;
  }

  v201 = v23;
  sub_1E1308EC0(&v238, &v241);
  __swift_project_boxed_opaque_existential_1Tm(&v241, v242);
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(&v241);
LABEL_5:
    v45 = *(v7 + 24);
    v46 = *(v7 + 32);
    v47 = __swift_project_boxed_opaque_existential_1Tm(v7, v45);
    v242 = v45;
    v243 = *(v46 + 8);
    v48 = __swift_allocate_boxed_opaque_existential_0(&v241);
    (*(*(v45 - 8) + 16))(v48, v47, v45);
    v49 = *(v7 + 104);
    v50 = *(v7 + 112);
    v51 = __swift_project_boxed_opaque_existential_1Tm((v7 + 80), v49);
    v239 = v49;
    v240 = *(v50 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v238);
    (*(*(v49 - 8) + 16))(boxed_opaque_existential_0, v51, v49);
    v53 = *v44;
    v210 = *(v24 + 104);
    v54 = v213;
    v210(v213, v53, v220);
    sub_1E1300B24(v7 + 368, &v235);
    sub_1E1300B24(v7 + 736, v234);
    v209 = v33;
    sub_1E1AF1C7C();
    v55 = MinX;
    sub_1E1AF1C9C();
    sub_1E1AF10EC();
    sub_1E1AF109C();
    v56 = v219;
    sub_1E1AF110C();
    sub_1E1AF1CFC();
    v203 = *(v215 + 8);
    (v203)(v56, *&v222);
    sub_1E1300B24(v7 + 40, &v241);
    v57 = *(v7 + 144);
    v58 = *(v7 + 152);
    v59 = __swift_project_boxed_opaque_existential_1Tm((v7 + 120), v57);
    v239 = v57;
    v240 = *(v58 + 8);
    v60 = __swift_allocate_boxed_opaque_existential_0(&v238);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    v210(v54, *MEMORY[0x1E69ABB78], v220);
    sub_1E1300B24(v7 + 408, &v235);
    sub_1E1300B24(v7 + 736, v234);
    v61 = v225;
    sub_1E1AF1C7C();
    v62 = v228;
    sub_1E1AF1C9C();
    sub_1E1AF110C();
    sub_1E1AF1D2C();
    v207 = v63;
    v64 = v222;
    v65 = v203;
    (v203)(v56, *&v222);
    sub_1E1AF10EC();
    sub_1E1AF109C();
    sub_1E1AF110C();
    sub_1E1AF1CFC();
    v65(v56, *&v64);
    v66 = *(v217 + 8);
    v67 = v62;
    v68 = v218;
    v66(*&v67, v218);
    v69 = *(v214 + 8);
    v70 = v61;
    v71 = v216;
    v69(v70, v216);
    v66(*&v55, v68);
    v69(v209, v71);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  v72 = v231;
  sub_1E1AF11CC();
  v225 = v73;
  v75 = v74;
  v244.origin.x = a3;
  v244.origin.y = a4;
  v244.size.width = a5;
  v244.size.height = v72;
  MinX = CGRectGetMinX(v244);
  v245.origin.x = a3;
  v245.origin.y = a4;
  v245.size.width = a5;
  v245.size.height = v72;
  CGRectGetMinY(v245);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 368), *(v7 + 392));
  v228 = v75;
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E1AF6B1C();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = *v42;
  v85 = *(v38 + 104);
  v86 = v229;
  v87 = v223;
  v85(v229, v84, v223);
  v88 = *v43;
  v89 = v212;
  v85(v212, v88, v87);
  CGPoint.rounded(_:)(v86, v77, v79);
  CGSize.rounded(_:)(v89, v81, v83);
  v90 = *(v38 + 8);
  v90(v89, v87);
  v90(v86, v87);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E1AF115C();
  CGRectGetMaxY(v246);
  sub_1E1300B24(v7 + 40, &v238);
  v91 = *(v7 + 104);
  v92 = *(v7 + 112);
  v93 = __swift_project_boxed_opaque_existential_1Tm((v7 + 80), v91);
  v236 = v91;
  v237 = *(v92 + 8);
  v94 = __swift_allocate_boxed_opaque_existential_0(&v235);
  (*(*(v91 - 8) + 16))(v94, v93, v91);
  v95 = *MEMORY[0x1E69ABB78];
  v96 = *(v206 + 104);
  v97 = v220;
  v96(v213, v95, v220);
  sub_1E1300B24(v7 + 408, v234);
  sub_1E1300B24(v7 + 736, &v232);
  sub_1E1AF1C7C();
  sub_1E1AF1C9C();
  sub_1E1AF10EC();
  sub_1E1AF109C();
  v98 = v219;
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v99 = *(v215 + 8);
  v99(v98, *&v222);
  v100 = v242;
  v101 = v243;
  v102 = __swift_project_boxed_opaque_existential_1Tm(&v241, v242);
  v239 = v100;
  v240 = *(v101 + 8);
  v103 = __swift_allocate_boxed_opaque_existential_0(&v238);
  (*(*(v100 - 8) + 16))(v103, v102, v100);
  v104 = *(v7 + 144);
  v105 = *(v7 + 152);
  v106 = __swift_project_boxed_opaque_existential_1Tm((v7 + 120), v104);
  v236 = v104;
  v237 = *(v105 + 8);
  v107 = __swift_allocate_boxed_opaque_existential_0(&v235);
  (*(*(v104 - 8) + 16))(v107, v106, v104);
  v96(v202, v95, v97);
  sub_1E134FD1C(v7 + 856, &v232, &unk_1ECEB47F0, &qword_1E1B05780);
  if (v233)
  {
    sub_1E1308EC0(&v232, v234);
    v108 = v207;
    v109 = v203;
  }

  else
  {
    sub_1E1300B24(v7 + 488, v234);
    v108 = v207;
    v109 = v203;
    if (v233)
    {
      sub_1E1308058(&v232, &unk_1ECEB47F0, &qword_1E1B05780);
    }
  }

  sub_1E1300B24(v7 + 736, &v232);
  sub_1E1AF1C7C();
  v110 = v231;
  v111 = a4;
  v112 = v224;
  sub_1E1AF1C9C();
  v247.origin.x = a3;
  v247.origin.y = v111;
  v247.size.width = v112;
  v247.size.height = v110;
  v207 = v228 + CGRectGetMinY(v247);
  sub_1E1AF10EC();
  sub_1E1AF109C();
  v113 = v219;
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v99(v113, *&v222);
  v114 = *(v217 + 8);
  v115 = v218;
  v114(*&v108, v218);
  v116 = *(v214 + 8);
  v117 = v216;
  v116(v109, v216);
  v114(v201, v115);
  v116(v210, v117);
  __swift_destroy_boxed_opaque_existential_1(&v241);
LABEL_11:
  v210 = *(v7 + 64);
  v228 = *(v7 + 72);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 40), v210);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 40), *(v7 + 64));
  sub_1E1AF115C();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  LODWORD(MinX) = *MEMORY[0x1E69E7048];
  v126 = *&v227;
  v127 = *&v227 + 104;
  v128 = *(*&v227 + 104);
  v129 = v229;
  v130 = v223;
  v128(v229);
  LODWORD(v225) = *MEMORY[0x1E69E7040];
  v131 = v212;
  v128(v212);
  CGPoint.rounded(_:)(v129, v119, v121);
  CGSize.rounded(_:)(v131, v123, v125);
  v132 = *(v126 + 8);
  v132(v131, v130);
  v132(v129, v130);
  sub_1E1AF116C();
  v227 = *(v7 + 144);
  v210 = *(v7 + 152);
  v209 = __swift_project_boxed_opaque_existential_1Tm((v7 + 120), *&v227);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 120), *(v7 + 144));
  sub_1E1AF115C();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  (v128)(v129, LODWORD(MinX), v130);
  (v128)(v131, v225, v130);
  CGPoint.rounded(_:)(v129, v134, v136);
  CGSize.rounded(_:)(v131, v138, v140);
  v141 = v131;
  v142 = v126 + 8;
  v132(v141, v130);
  v228 = *&v132;
  v132(v129, v130);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  v143 = v224;
  v144 = v231;
  sub_1E1AF11CC();
  v146 = v145;
  __swift_project_boxed_opaque_existential_1Tm((v7 + 528), *(v7 + 552));
  v227 = *&v146;
  sub_1E1AF12FC();
  v248.origin.x = a3;
  v147 = a3;
  v248.origin.y = v230;
  v248.size.width = v143;
  v248.size.height = v144;
  CGRectGetMinX(v248);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
  LOBYTE(v130) = sub_1E1AF117C();
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  sub_1E1AF115C();
  MaxY = CGRectGetMaxY(v249);
  v211 = a3;
  if (v130)
  {
    v149 = v230;
  }

  else
  {
    v150 = *(v7 + 264);
    v151 = *(v7 + 272);
    v152 = __swift_project_boxed_opaque_existential_1Tm((v7 + 240), v150);
    v242 = v150;
    v243 = *(v151 + 8);
    v153 = __swift_allocate_boxed_opaque_existential_0(&v241);
    (*(*(v150 - 8) + 16))(v153, v152, v150);
    v154 = *(v7 + 304);
    v155 = *(v7 + 312);
    v156 = __swift_project_boxed_opaque_existential_1Tm((v7 + 280), v154);
    v239 = v154;
    v240 = *(v155 + 8);
    v157 = __swift_allocate_boxed_opaque_existential_0(&v238);
    (*(*(v154 - 8) + 16))(v157, v156, v154);
    (*(v206 + 104))(v213, *MEMORY[0x1E69ABB80], v220);
    sub_1E1300B24(v7 + 616, &v235);
    sub_1E1300B24(v7 + 736, v234);
    v158 = v204;
    sub_1E1AF1C7C();
    v159 = v230;
    v160 = v205;
    v161 = v224;
    sub_1E1AF1C9C();
    __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
    sub_1E1AF11CC();
    v220 = v162;
    v227 = *&v163;
    v164 = v147;
    v166 = v165;
    sub_1E1AF10EC();
    sub_1E1AF109C();
    v167 = v219;
    sub_1E1AF110C();
    sub_1E1AF1CFC();
    (*(v215 + 8))(v167, COERCE_DOUBLE(*&v222));
    __swift_project_boxed_opaque_existential_1Tm((v7 + 696), *(v7 + 720));
    v227 = *&v166;
    sub_1E1AF12FC();
    v250.origin.x = v164;
    v250.origin.y = v159;
    v250.size.width = v161;
    v250.size.height = v231;
    CGRectGetMinX(v250);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
    v149 = v159;
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm((v7 + 320), *(v7 + 344));
    sub_1E1AF115C();
    MaxY = CGRectGetMaxY(v251);
    (*(v217 + 8))(v160, v218);
    v168 = v158;
    v142 = v126 + 8;
    v129 = v229;
    (*(v214 + 8))(v168, v216);
  }

  sub_1E134FD1C(v7 + 896, &v238, &unk_1ECEB47F0, &qword_1E1B05780);
  v169 = v224;
  v170 = v227;
  if (!v239)
  {
    sub_1E1308058(&v238, &unk_1ECEB47F0, &qword_1E1B05780);
    v172 = v211;
LABEL_26:
    v255.origin.x = v172;
    v255.origin.y = v149;
    v255.size.width = v169;
    v198 = v231;
    v255.size.height = v231;
    CGRectGetMinY(v255);
    v199 = *(v7 + 840);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 816), v199);
    sub_1E13BC274(v199);
    sub_1E1AF12DC();
    (*&v228)(v129, v223);
    v256.origin.x = v172;
    v256.origin.y = v149;
    v256.size.width = v169;
    v256.size.height = v198;
    CGRectGetWidth(v256);
    sub_1E1AF107C();
    return;
  }

  sub_1E1308EC0(&v238, &v241);
  sub_1E134FD1C(v7 + 936, &v238, &unk_1ECEB47F0, &qword_1E1B05780);
  v171 = v239;
  v172 = v211;
  if (!v239)
  {
    sub_1E1308058(&v238, &unk_1ECEB47F0, &qword_1E1B05780);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v238, v239);
  sub_1E13BC274(v171);
  v173 = sub_1E1AF12DC();
  (*&v228)(v129, v223);
  __swift_destroy_boxed_opaque_existential_1(&v238);
  v174 = *(v7 + 360);
  if (!v174)
  {
    goto LABEL_25;
  }

  if (!*(v174 + 16))
  {
    goto LABEL_25;
  }

  v252.origin.x = v172;
  v252.origin.y = v149;
  v252.size.width = v169;
  v252.size.height = v231;
  v175 = CGRectGetMinX(v252);
  v176 = *(v174 + 16);
  if (!v176)
  {
    goto LABEL_25;
  }

  v177 = v175;
  v216 = v7;
  v222 = MaxY - v170;
  v218 = v174;
  v178 = v174 + 32;
  v220 = v127;
  v179 = v223;
  v227 = *&v142;
  v219 = v128;
  v217 = v176;
  v180 = v176;
  v181 = v212;
  do
  {
    sub_1E1300B24(v178, &v238);
    __swift_project_boxed_opaque_existential_1Tm(&v238, v239);
    sub_1E1AF11CC();
    v182 = v173;
    v184 = v183;
    v186 = v185;
    __swift_project_boxed_opaque_existential_1Tm(&v241, v242);
    sub_1E1AF12FC();
    v188 = v222 + v187;
    v189 = v229;
    v190 = v219;
    (v219)(v229, LODWORD(MinX), v179);
    v190(v181, v225, v179);
    v191 = CGPoint.rounded(_:)(v189, v177, v188);
    v193 = v192;
    v194 = CGSize.rounded(_:)(v181, v184, v186);
    v196 = v195;
    v197 = v228;
    (*&v228)(v181, v179);
    (*&v197)(v189, v179);
    __swift_project_boxed_opaque_existential_1Tm(&v238, v239);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v238);
    v253.origin.x = v191;
    v253.origin.y = v193;
    v253.size.width = v194;
    v173 = v182;
    v253.size.height = v196;
    v177 = floor(v182 + CGRectGetMaxX(v253));
    v178 += 40;
    --v180;
  }

  while (v180);
  v149 = v230;
  if (v217 <= *(v218 + 16))
  {
    sub_1E1300B24(v218 + 40 * v217 - 8, &v238);
    __swift_project_boxed_opaque_existential_1Tm(&v238, v239);
    sub_1E1AF115C();
    CGRectGetMaxY(v254);
    __swift_destroy_boxed_opaque_existential_1(&v238);
    v169 = v224;
    v7 = v216;
    v129 = v229;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(&v241);
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_1E16B64D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E1308EC0(&v12, v10 + 40 * a1 + 32);
}

double _s11AppStoreKit19ProductReviewLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, void *a2, double a3, double a4)
{
  v36 = sub_1E1AF162C();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E1AF165C();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF1A1C();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[54];
  __swift_project_boxed_opaque_existential_1Tm(a1 + 51, v16);
  sub_1E13BC274(v16);
  sub_1E1AF12DC();
  v18 = *(v13 + 8);
  v17 = (v13 + 8);
  v18(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0, &unk_1E1B038F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E1B04930;
  sub_1E1300B24(a1, v40);
  v20 = MEMORY[0x1E69ABA90];
  *(v19 + 56) = v10;
  *(v19 + 64) = v20;
  __swift_allocate_boxed_opaque_existential_0((v19 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 5), v40);
  *(v19 + 96) = v10;
  *(v19 + 104) = v20;
  __swift_allocate_boxed_opaque_existential_0((v19 + 72));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 20), v40);
  *(v19 + 136) = v10;
  *(v19 + 144) = v20;
  __swift_allocate_boxed_opaque_existential_0((v19 + 112));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 25), v40);
  if (__OFSUB__(a1[30], 1))
  {
    __break(1u);
LABEL_12:
    v19 = sub_1E172D4BC(0, *(v19 + 16) + 1, 1, v19);
    goto LABEL_6;
  }

  *(v19 + 176) = v10;
  *(v19 + 184) = v20;
  __swift_allocate_boxed_opaque_existential_0((v19 + 152));
  sub_1E1AF1A2C();
  sub_1E1300B24((a1 + 56), v40);
  *(v19 + 216) = v10;
  *(v19 + 224) = v20;
  __swift_allocate_boxed_opaque_existential_0((v19 + 192));
  sub_1E1AF1A2C();
  v41 = v19;
  v21 = [a2 traitCollection];
  v22 = sub_1E1AF698C();

  if (v22)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;
    sub_1E1300B24((a1 + 10), v40);
    *(inited + 56) = v10;
    *(inited + 64) = v20;
    __swift_allocate_boxed_opaque_existential_0((inited + 32));
    sub_1E1AF1A2C();
    sub_1E1300B24((a1 + 15), v40);
    *(inited + 96) = v10;
    *(inited + 104) = v20;
    __swift_allocate_boxed_opaque_existential_0((inited + 72));
    sub_1E1AF1A2C();
    sub_1E172830C(inited);
  }

  sub_1E134FD1C((a1 + 66), &v37, &unk_1ECEB47F0, &qword_1E1B05780);
  if (!v38)
  {
    sub_1E1308058(&v37, &unk_1ECEB47F0, &qword_1E1B05780);
    goto LABEL_10;
  }

  sub_1E1308EC0(&v37, v40);
  sub_1E1300B24(v40, &v37);
  v17 = v30;
  sub_1E1AF1A2C();
  v19 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v24 = v31;
  v26 = *(v19 + 16);
  v25 = *(v19 + 24);
  if (v26 >= v25 >> 1)
  {
    v19 = sub_1E172D4BC((v25 > 1), v26 + 1, 1, v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  v38 = v10;
  v39 = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  (*(v24 + 16))(boxed_opaque_existential_0, v17, v10);
  *(v19 + 16) = v26 + 1;
  sub_1E1308EC0(&v37, v19 + 40 * v26 + 32);
  (*(v24 + 8))(v17, v10);
  v41 = v19;
LABEL_10:
  (*(v34 + 104))(v32, *MEMORY[0x1E69AB970], v36);
  sub_1E1AF163C();
  sub_1E1AF161C();
  (*(v33 + 8))(v9, v35);
  return a3;
}

unint64_t sub_1E16B6BCC()
{
  result = qword_1EE1EE968[0];
  if (!qword_1EE1EE968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EE968);
  }

  return result;
}

uint64_t sub_1E16B6C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 976))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E16B6C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 968) = 0;
    *(result + 248) = 0u;
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
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 976) = 1;
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

    *(result + 976) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E16B6DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E16B6E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 608) = 1;
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

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ArcadeSeeAllGamesPageSegment.init(deserializing:using:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v43 = a3;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v47 = a1;
  sub_1E1AF381C();
  v17 = sub_1E1AF37CC();
  v18 = *(v8 + 8);
  v19 = v16;
  v20 = v7;
  v22 = v21;
  v18(v19, v20);
  if (!v22)
  {
    v31 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v32 = 0x656C746974;
    v32[1] = 0xE500000000000000;
    v32[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    (*(v5 + 8))(v46, v4);
    v18(v47, v20);
    return;
  }

  v40 = v17;
  sub_1E1AF381C();
  v39 = sub_1E1AF37CC();
  v24 = v23;
  v18(v13, v20);
  if (!v24)
  {
    v33 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v34 = 25705;
    v34[1] = 0xE200000000000000;
    v34[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x1E69AB690], v33);
    swift_willThrow();
    (*(v5 + 8))(v46, v4);
    v18(v47, v20);
    goto LABEL_7;
  }

  v41 = v24;
  v42 = v20;
  sub_1E1AF381C();
  v25 = v5;
  v26 = *(v5 + 16);
  v27 = v44;
  v28 = v46;
  v26(v44, v46, v4);
  type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction(0);
  swift_allocObject();
  v29 = v45;
  v30 = ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(v10, v27);
  if (v29)
  {
    (*(v25 + 8))(v28, v4);
    v18(v47, v42);

LABEL_7:

    return;
  }

  v35 = v30;
  (*(v25 + 8))(v28, v4);
  v18(v47, v42);
  v36 = v43;
  v37 = v40;
  v38 = v41;
  *v43 = v39;
  v36[1] = v38;
  v36[2] = v37;
  v36[3] = v22;
  v36[4] = v35;
}

uint64_t ArcadeSeeAllGamesPageSegment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSeeAllGamesPageSegment.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t makeModernAppStateController(deviceAppFetcher:updateRegistry:dataSources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  sub_1E1300B24(a1, v14);
  sub_1E1300B24(a2, v13);
  type metadata accessor for ModernAppStateController();
  v9 = swift_allocObject();

  sub_1E16B76B8(v14, v13, a3);
  v10 = sub_1E1AF649C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;

  sub_1E154AF74(0, 0, v8, &unk_1E1B27EC0, v11);

  return v9;
}

uint64_t sub_1E16B75F0()
{
  v0 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v0, qword_1ECEB79D0);
  v1 = __swift_project_value_buffer(v0, qword_1ECEB79D0);
  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECEBA3D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E16B76B8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v6 = sub_1E1AF2E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  v27 = a2;
  sub_1E1300B24(a2, v29);
  sub_1E1AF2E1C();
  sub_1E1AF2E2C();

  v16 = *(v7 + 8);
  v16(v9, v6);
  if (qword_1EE1ED2A8 != -1)
  {
    swift_once();
  }

  v17 = (qword_1EE1ED2B0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v18 = v17[1];
  if (v18)
  {
    if (*v17 != 0xD000000000000016 || v18 != 0x80000001E1B6FA60)
    {
      sub_1E1AF74AC();
    }
  }

  else
  {
    v26 = v4;
    if (qword_1EE1ED2B8 != -1)
    {
      swift_once();
    }

    v20 = sub_1E1AF591C();
    v25[1] = __swift_project_value_buffer(v20, qword_1EE1ED2C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v4 = v26;
  }

  sub_1E1AF2E0C();
  v16(v12, v6);
  sub_1E1AF2F2C();
  (*(v7 + 16))(v9, v15, v6);
  *(v4 + 16) = sub_1E1AF2EDC();
  v21 = v28;
  sub_1E1300B24(v28, v4 + 24);
  v22 = sub_1E15A1C18(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A10, &unk_1E1B27FA0);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v16(v15, v6);
  *(v23 + 16) = v22;

  *(v4 + 64) = v23;
  return v4;
}

uint64_t sub_1E16B7AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a4;
  sub_1E1AF389C();
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B7B54, 0, 0);
}

uint64_t sub_1E16B7B54()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E16B7BEC;

  return MEMORY[0x1EEDEC250]();
}

uint64_t sub_1E16B7BEC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E16B7D28, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E16B7D28()
{
  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 2));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E16B7F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5D8;

  return sub_1E16B7AC4(a1, v4, v5, v6);
}

uint64_t sub_1E16B8000(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510, &unk_1E1B05F20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-1] - v6;
  if (sub_1E1AF2F1C())
  {
    return a1();
  }

  sub_1E1AF2EFC();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A00, &qword_1E1B27F90);
  sub_1E16BE610();

  sub_1E1AF3CDC();
  sub_1E1AF3CFC();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E16B81A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  sub_1E1AF389C();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B8234, 0, 0);
}

uint64_t sub_1E16B8234()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E16B82D0;

  return MEMORY[0x1EEDEC258](1);
}

uint64_t sub_1E16B82D0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E16B8458;
  }

  else
  {
    v2 = sub_1E16B83E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16B83E4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E16B8458()
{
  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v3 = v0[6];
  v4 = v0[7];
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 2));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v6 = v0[11];
  if (v6)
  {
    v6();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E16B8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  sub_1E1AF389C();
  v8[27] = swift_task_alloc();
  v9 = sub_1E1AF2FAC();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  sub_1E1AF31DC();
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B87B0, 0, 0);
}

uint64_t sub_1E16B87B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB79F8, &qword_1E1B27F60);
  v16 = sub_1E1AF2FDC();
  v15 = *(v16 - 8);
  v14 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  AdamId.numberValue.getter();
  if (v2)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v4 = v0[23];
    v3 = v0[24];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v4, v3);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001E1B6F8F0;
    *(v6 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v8 = v0[14];
    v9 = v0[15];
    v0[5] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 2));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  (*(v0[29] + 104))(v0[30], *MEMORY[0x1E698B1A0], v0[28]);
  sub_1E1AF2F8C();
  v11 = sub_1E1498198(v1);
  v0[32] = v11;
  swift_setDeallocating();
  (*(v15 + 8))(v1 + v14, v16);
  swift_deallocClassInstance();
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = sub_1E16B8C78;

  return MEMORY[0x1EEDEC218](v11, 0);
}

uint64_t sub_1E16B8C78()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1E16B8E20;
  }

  else
  {

    v2 = sub_1E16B8D94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16B8D94()
{
  (*(v0 + 200))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16B8E20()
{

  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(v0 + 72) = &type metadata for AdamId;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;

  sub_1E1AF384C();
  sub_1E13E44F8(v0 + 48);
  sub_1E1AF387C();
  swift_getErrorValue();
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  *(v0 + 104) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 80));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF384C();
  sub_1E13E44F8(v0 + 80);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  (*(v0 + 200))();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E16B90C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  sub_1E1AF389C();
  v6[25] = swift_task_alloc();
  v7 = sub_1E1AF2FAC();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  sub_1E1AF31DC();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16B91E4, 0, 0);
}

uint64_t sub_1E16B91E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB79F8, &qword_1E1B27F60);
  v16 = sub_1E1AF2FDC();
  v15 = *(v16 - 8);
  v14 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  AdamId.numberValue.getter();
  if (v2)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v4 = v0[23];
    v3 = v0[24];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v4, v3);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001E1B6F8F0;
    *(v6 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v8 = v0[14];
    v9 = v0[15];
    v0[5] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1E1AF385C();
    sub_1E13E44F8((v0 + 2));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  (*(v0[27] + 104))(v0[28], *MEMORY[0x1E698B1A0], v0[26]);
  sub_1E1AF2F8C();
  v11 = sub_1E1498198(v1);
  v0[30] = v11;
  swift_setDeallocating();
  (*(v15 + 8))(v1 + v14, v16);
  swift_deallocClassInstance();
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_1E16B96AC;

  return MEMORY[0x1EEDEC218](v11, 1);
}

uint64_t sub_1E16B96AC()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E16B9804, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E16B9804()
{

  if (qword_1ECEB12A8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[23];
  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1ECEBA3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[9] = &type metadata for AdamId;
  v0[6] = v3;
  v0[7] = v2;

  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 6));
  sub_1E1AF387C();
  swift_getErrorValue();
  v5 = v0[17];
  v6 = v0[18];
  v0[13] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 10));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E16B9A9C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF315C();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF2FAC();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF2FDC();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF316C();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  v36 = *(v2 + 16);
  v48 = v20;
  v49 = v19;
  AdamId.numberValue.getter();
  if (v21)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v48 = 0xD000000000000017;
    v49 = 0x80000001E1B6F8F0;
    v51 = 0x5B2064496D616441;
    v52 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v20, v19);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v51, v52);

    v22 = v48;
    v23 = v49;
    sub_1E16BE330();
    v24 = v12;
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v23;
    *(v26 + 16) = 0;
    swift_willThrow();
    v33[1] = v24;
    v34 = v6;
    v35 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF591C();
    __swift_project_value_buffer(v27, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v28 = v46;
    v29 = v47;
    v50 = v47;
    v30 = __swift_allocate_boxed_opaque_existential_0(&v48);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    sub_1E1AF385C();
    sub_1E13E44F8(&v48);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    a2 = v35;
    v6 = v34;
  }

  (*(v42 + 104))(v41, *MEMORY[0x1E698B1A0], v43);
  sub_1E1AF2F8C();
  v31 = v44;
  sub_1E1AF314C();
  sub_1E1AF2DBC();
  (*(v45 + 8))(v31, v6);
  (*(v39 + 8))(v15, v40);
  sub_1E196BCEC(a2);
  return (*(v37 + 8))(v18, v38);
}

uint64_t sub_1E16BA0EC()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1E16BE384((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

void sub_1E16BA168(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1E15A47D8(), (v12 & 1) != 0))
  {
    *a5 = *(*(v10 + 56) + 8 * v11);
    a5[1] = &off_1F5C4AE80;
  }

  else
  {
    type metadata accessor for ModernAppStateMachine();
    v13 = swift_allocObject();
    v13[4] = a2;
    v13[5] = a3;
    v13[2] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB79F0, &qword_1E1B27F48);
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    v13[3] = v14;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_1E159B978(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v16;
    *a5 = v13;
    a5[1] = &off_1F5C4AE80;
  }
}

uint64_t sub_1E16BA2AC(unint64_t *a1, char *a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF30FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v30 - v10;
  v37 = sub_1E1AF2FAC();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38 = sub_1E1AF2FDC();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = *(v2 + 16);
  v32 = *a2;
  v33 = v17;
  v43 = v15;
  v44 = v16;
  AdamId.numberValue.getter();
  if (v18)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v43 = 0xD000000000000017;
    v44 = 0x80000001E1B6F8F0;
    v46 = 0x5B2064496D616441;
    v47 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v16);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v46, v47);

    v19 = v43;
    v20 = v44;
    sub_1E16BE330();
    v21 = swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v20;
    *(v22 + 16) = 0;
    swift_willThrow();
    v31 = v6;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v23 = sub_1E1AF591C();
    v30[1] = __swift_project_value_buffer(v23, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v25 = v41;
    v24 = v42;
    v45 = v42;
    v26 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    sub_1E1AF385C();
    sub_1E13E44F8(&v43);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v6 = v31;
  }

  (*(v35 + 104))(v34, *MEMORY[0x1E698B1A0], v37);
  sub_1E1AF2F8C();
  v27 = v39;
  (*(v7 + 104))(v39, **(&unk_1E870E708 + v32), v6);
  v28 = v40;
  (*(v7 + 32))(v40, v27, v6);
  sub_1E1AF2DEC();
  (*(v7 + 8))(v28, v6);
  return (*(v36 + 8))(v14, v38);
}

uint64_t sub_1E16BA8B4(unint64_t *a1, int a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF2FAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E1AF2FDC();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v30 = *(v2 + 16);
  v35 = v15;
  v36 = v14;
  AdamId.numberValue.getter();
  if (v16)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v35 = 0xD000000000000017;
    v36 = 0x80000001E1B6F8F0;
    v38 = 0x5B2064496D616441;
    v39 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v14);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v38, v39);

    v17 = v35;
    v18 = v36;
    sub_1E16BE330();
    v19 = swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v18;
    *(v20 + 16) = 0;
    swift_willThrow();
    v26 = v9;
    v27 = v7;
    v28 = v6;
    v29 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v22 = v33;
    v23 = v34;
    v37 = v34;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v35);
    (*(*(v23 - 8) + 16))(v24, v22, v23);
    sub_1E1AF385C();
    sub_1E13E44F8(&v35);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v7 = v27;
    v6 = v28;
    v9 = v26;
  }

  (*(v7 + 104))(v9, *MEMORY[0x1E698B1A0], v6);
  sub_1E1AF2F8C();
  sub_1E1AF2DFC();
  return (*(v31 + 8))(v13, v32);
}

uint64_t sub_1E16BADA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  sub_1E1AF389C();
  v5[15] = swift_task_alloc();
  v7 = sub_1E1AF2FAC();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_1E1AF31DC();
  v5[19] = swift_task_alloc();
  v8 = sub_1E1AF2FDC();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  sub_1E1AF312C();
  v5[23] = swift_task_alloc();
  v9 = sub_1E1AF315C();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  v5[26] = v10;
  v5[27] = v11;
  v5[28] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E16BAFAC, 0, 0);
}

uint64_t sub_1E16BAFAC()
{
  v0[9] = v0[11];

  v1 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v1);

  sub_1E1AF311C();
  sub_1E1AF313C();
  AdamId.numberValue.getter();
  if (v2)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v4 = v0[27];
    v3 = v0[28];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v4, v3);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001E1B6F8F0;
    *(v6 + 16) = 0;
    swift_willThrow();
    v7 = v0 + 2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v9 = v0[6];
    v10 = v0[7];
    v0[5] = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
    sub_1E1AF385C();
    sub_1E13E44F8(v7);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  (*(v0[17] + 104))(v0[18], *MEMORY[0x1E698B1A0], v0[16]);
  sub_1E1AF2F8C();
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_1E16BB440;
  v13 = v0[26];
  v14 = v0[22];

  return MEMORY[0x1EEDEC288](v14, v13);
}

uint64_t sub_1E16BB440()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E16BB598, 0, 0);
}

uint64_t sub_1E16BB598()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E16BB658(unint64_t *a1, int a2)
{
  v3 = v2;
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E1AF2FAC();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = sub_1E1AF2FDC();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = *a1;
  v16 = a1[1];
  v43 = *a1;
  v44 = v16;
  AdamId.numberValue.getter();
  if (v17)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v43 = 0xD000000000000017;
    v44 = 0x80000001E1B6F8F0;
    v46 = 0x5B2064496D616441;
    v47 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v15, v16);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v46, v47);

    v18 = v43;
    v19 = v44;
    sub_1E16BE330();
    v20 = swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    swift_willThrow();
    v34 = v7;
    v35 = v3;
    v36 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E1AF591C();
    v33 = __swift_project_value_buffer(v22, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v23 = v41;
    v24 = v42;
    v45 = v42;
    v25 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(v24 - 8) + 16))(v25, v23, v24);
    sub_1E1AF385C();
    sub_1E13E44F8(&v43);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    LOBYTE(a2) = v36;
    v7 = v34;
  }

  v26 = v39;
  v27 = *(v39 + 104);
  v27(v9, *MEMORY[0x1E698B1A0], v7);
  sub_1E1AF2F8C();
  v27(v9, *MEMORY[0x1E698B198], v7);
  v28 = v37;
  sub_1E1AF2FCC();
  (*(v26 + 8))(v9, v7);
  v29 = sub_1E1AF2F0C();
  if (v29 & 1) == 0 && (a2)
  {
    v29 = sub_1E1AF2F0C();
  }

  v30 = *(v38 + 8);
  v31 = v40;
  v30(v28, v40);
  v30(v14, v31);
  return v29 & 1;
}

uint64_t sub_1E16BBBE8(unint64_t *a1, int a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF2FAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1E1AF2FDC();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v29 = *(v2 + 16);
  v35 = v14;
  v36 = v13;
  AdamId.numberValue.getter();
  if (v15)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v35 = 0xD000000000000017;
    v36 = 0x80000001E1B6F8F0;
    v38 = 0x5B2064496D616441;
    v39 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v14, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v38, v39);

    v16 = v35;
    v17 = v36;
    sub_1E16BE330();
    v18 = swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v17;
    *(v19 + 16) = 0;
    swift_willThrow();
    v26 = v7;
    v27 = v6;
    v28 = a2;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1E1AF591C();
    __swift_project_value_buffer(v20, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v21 = v33;
    v22 = v34;
    v37 = v34;
    v23 = __swift_allocate_boxed_opaque_existential_0(&v35);
    (*(*(v22 - 8) + 16))(v23, v21, v22);
    sub_1E1AF385C();
    sub_1E13E44F8(&v35);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v7 = v26;
    v6 = v27;
  }

  (*(v7 + 104))(v32, *MEMORY[0x1E698B1A0], v6);
  sub_1E1AF2F8C();
  v24 = sub_1E1AF2E7C();
  (*(v30 + 8))(v12, v31);
  return v24 & 1;
}

uint64_t sub_1E16BC0EC(uint64_t *a1)
{
  v2[22] = v1;
  sub_1E1AF389C();
  v2[23] = swift_task_alloc();
  v4 = sub_1E1AF2F3C();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = sub_1E1AF2FAC();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = sub_1E1AF2FDC();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v7 = sub_1E1AF31DC();
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  v2[36] = v8;
  v2[37] = v9;
  v2[38] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E16BC304, 0, 0);
}

uint64_t sub_1E16BC304(uint64_t a1)
{
  AdamId.numberValue.getter();
  if (v2)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v4 = v1[37];
    v3 = v1[38];
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v4, v3);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v5 = swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001E1B6F8F0;
    *(v6 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v8 = v1[14];
    v9 = v1[15];
    v1[5] = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 2);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
    sub_1E1AF385C();
    sub_1E13E44F8((v1 + 2));
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  v11 = v1[36];
  v12 = v1[34];
  v14 = v1[31];
  v13 = v1[32];
  v15 = v1[30];
  v16 = v1[25];
  v27 = v1[33];
  v28 = v1[26];
  v17 = v1[22];
  (*(v1[28] + 104))(v1[29], *MEMORY[0x1E698B1A0], v1[27]);
  sub_1E1AF2F8C();
  sub_1E1AF2F9C();
  (*(v14 + 8))(v13, v15);
  v18 = v17[6];
  v19 = v17[7];
  __swift_project_boxed_opaque_existential_1Tm(v17 + 3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2520, &qword_1E1B02928);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E1B02CC0;
  (*(v12 + 16))(v21 + v20, v11, v27);
  v22 = sub_1E1497240(v21);
  swift_setDeallocating();
  v23 = *(v12 + 8);
  v1[39] = v23;
  v1[40] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v21 + v20, v27);
  swift_deallocClassInstance();
  *v28 = v22;
  (*(v16 + 104))();
  v24 = swift_task_alloc();
  v1[41] = v24;
  *v24 = v1;
  v24[1] = sub_1E16BC808;
  v25 = v1[26];

  return MEMORY[0x1EEDEC2D0](v25, v18, v19);
}

uint64_t sub_1E16BC808(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[42] = a1;
  v4[43] = v1;

  (*(v3[25] + 8))(v3[26], v3[24]);
  if (v1)
  {
    v5 = sub_1E16BCB5C;
  }

  else
  {
    v5 = sub_1E16BC978;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E16BC978()
{
  v1 = *(v0 + 336);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = sub_1E1AF71CC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E68FFD80](0, *(v0 + 336));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 336) + 32);
  }

  v4 = [v3 bundleShortVersion];
  if (!v4)
  {
    v12 = [v3 bundleVersion];
    if (v12)
    {
      v13 = v12;
      v9 = sub_1E1AF5DFC();
      v11 = v14;

LABEL_14:
      (*(v0 + 312))(*(v0 + 288), *(v0 + 264));

      goto LABEL_15;
    }

LABEL_13:
    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = v4;
  v9 = sub_1E1AF5DFC();
  v11 = v10;

  v5(v6, v7);
LABEL_15:

  v15 = *(v0 + 8);

  return v15(v9, v11);
}

uint64_t sub_1E16BCB5C()
{
  if (qword_1ECEB0F88 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v12 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v10 = v0[33];
  v11 = v0[36];
  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1ECEB79D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[9] = &type metadata for AdamId;
  v0[6] = v2;
  v0[7] = v3;

  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 6));
  sub_1E1AF387C();
  swift_getErrorValue();
  v5 = v0[17];
  v6 = v0[18];
  v0[13] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF384C();
  sub_1E13E44F8((v0 + 10));
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v12(v11, v10);

  v8 = v0[1];

  return v8(0, 0);
}

uint64_t sub_1E16BCE38(unint64_t *a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF2FAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF2FDC();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v29 = *(v1 + 16);
  v34 = v12;
  v35 = v13;
  AdamId.numberValue.getter();
  if (v14)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v34 = 0xD000000000000017;
    v35 = 0x80000001E1B6F8F0;
    v37 = 0x5B2064496D616441;
    v38 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v12, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v37, v38);

    v15 = v34;
    v16 = v35;
    sub_1E16BE330();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    swift_willThrow();
    v26 = v7;
    v27 = v5;
    v28 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v20 = v32;
    v21 = v33;
    v36 = v33;
    v22 = __swift_allocate_boxed_opaque_existential_0(&v34);
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    sub_1E1AF385C();
    sub_1E13E44F8(&v34);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v5 = v27;
    v4 = v28;
    v7 = v26;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E698B1A0], v4);
  sub_1E1AF2F8C();
  v23 = sub_1E1AF2ECC();
  (*(v30 + 8))(v11, v31);
  return v23 & 1;
}

uint64_t sub_1E16BD31C(unint64_t *a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF2FAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF2FDC();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v28 = *(v1 + 16);
  v33 = v12;
  v34 = v13;
  AdamId.numberValue.getter();
  if (v14)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v33 = 0xD000000000000017;
    v34 = 0x80000001E1B6F8F0;
    v36 = 0x5B2064496D616441;
    v37 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v12, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v36, v37);

    v15 = v33;
    v16 = v34;
    sub_1E16BE330();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    swift_willThrow();
    v25 = v7;
    v26 = v5;
    v27 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v20 = v31;
    v21 = v32;
    v35 = v32;
    v22 = __swift_allocate_boxed_opaque_existential_0(&v33);
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    sub_1E1AF385C();
    sub_1E13E44F8(&v33);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v5 = v26;
    v4 = v27;
    v7 = v25;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E698B1A0], v4);
  sub_1E1AF2F8C();
  sub_1E1AF2E8C();
  return (*(v29 + 8))(v11, v30);
}

uint64_t sub_1E16BD7F8(unint64_t *a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF2FAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31DC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF2FDC();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v28 = *(v1 + 16);
  v33 = v12;
  v34 = v13;
  AdamId.numberValue.getter();
  if (v14)
  {
    sub_1E1AF31BC();
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v33 = 0xD000000000000017;
    v34 = 0x80000001E1B6F8F0;
    v36 = 0x5B2064496D616441;
    v37 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v12, v13);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](v36, v37);

    v15 = v33;
    v16 = v34;
    sub_1E16BE330();
    v17 = swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0;
    swift_willThrow();
    v25 = v7;
    v26 = v5;
    v27 = v4;
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v20 = v31;
    v21 = v32;
    v35 = v32;
    v22 = __swift_allocate_boxed_opaque_existential_0(&v33);
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    sub_1E1AF385C();
    sub_1E13E44F8(&v33);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
    v5 = v26;
    v4 = v27;
    v7 = v25;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E698B1A0], v4);
  sub_1E1AF2F8C();
  sub_1E1AF2EAC();
  return (*(v29 + 8))(v11, v30);
}

uint64_t sub_1E16BDCD8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1E16BDD20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1E1AF649C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1E154AF74(0, 0, v3, &unk_1E1B27F98, v5);
}

uint64_t sub_1E16BDE2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = sub_1E1AF649C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = v11;
  v13[6] = v10;
  v13[7] = a2;
  v13[8] = a3;

  sub_1E154AF74(0, 0, v9, &unk_1E1B27F80, v13);
}

uint64_t sub_1E16BDF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1E1AF649C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  sub_1E1300E34(a1, a2);
  sub_1E154AF74(0, 0, v8, &unk_1E1B27F70, v10);
}

uint64_t sub_1E16BE098(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v7 = *a1;
  v6 = a1[1];
  v8 = sub_1E1AF649C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v7;
  v9[6] = v6;

  sub_1E154AF74(0, 0, v5, &unk_1E1B27F58, v9);
}

uint64_t sub_1E16BE1CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E130B5DC;

  return sub_1E16BADA0(a1, a2, a3, a4);
}

uint64_t sub_1E16BE290(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E1619E40;

  return sub_1E16BC0EC(a1);
}

unint64_t sub_1E16BE330()
{
  result = qword_1ECEB79E8;
  if (!qword_1ECEB79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB79E8);
  }

  return result;
}

uint64_t sub_1E16BE3A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5DC;

  return sub_1E16B90C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E16BE46C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5D8;

  return sub_1E16B81A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E16BE534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E16B8690(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1E16BE610()
{
  result = qword_1ECEB7A08;
  if (!qword_1ECEB7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7A00, &qword_1E1B27F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7A08);
  }

  return result;
}

uint64_t sub_1E16BE674()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1F18B8);
  __swift_project_value_buffer(v4, qword_1EE1F18B8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E16BE7C8()
{
  result = sub_1E1AF5DBC();
  qword_1ECEF4608 = result;
  return result;
}

uint64_t AccountDeviceList.__allocating_init(accountStore:bag:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E16C07FC(a1, a2);

  return v4;
}

uint64_t AccountDeviceList.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = sub_1E16C07FC(a1, a2);

  return v3;
}

void sub_1E16BE8A4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  if ((v4 & 1) == 0)
  {
    if (v2)
    {
      sub_1E16BEA28();
    }
  }
}

void sub_1E16BE8F8(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  if (v3 & 1) == 0 && (a1)
  {
    sub_1E16BEA28();
  }
}

void (*sub_1E16BE948(uint64_t *a1))(uint64_t a1, __n128 a2)
{
  if (MEMORY[0x1E69E7D08])
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
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 40);
  return sub_1E16BE9D4;
}

void sub_1E16BE9D4(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(v3 + 40);
  *(v3 + 40) = v4;
  if ((v5 & 1) == 0 && v4)
  {
    sub_1E16BEA28();
  }

  free(v2);
}

double sub_1E16BEA28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F18B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF591C();
  v8 = __swift_project_value_buffer(v7, qword_1EE1F18B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  v15 = v9;
  v10 = swift_allocObject();
  v14 = xmmword_1E1B02CC0;
  *(v10 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  v16 = v8;
  sub_1E1AF548C();

  v11 = [objc_opt_self() standardUserDefaults];
  sub_1E16BEDA0(v2);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E1308058(v2, &unk_1ECEBB780, &unk_1E1B029A0);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_1E1AEFDFC();
    if (v12 > -86400.0)
    {
      *(swift_allocObject() + 16) = v14;
      sub_1E1AF382C();
      sub_1E1AF548C();

      (*(v4 + 8))(v6, v3);
      return result;
    }

    (*(v4 + 8))(v6, v3);
  }

  return sub_1E16BEF08();
}

uint64_t sub_1E16BEDA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF5DBC();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1E1308058(v11, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    goto LABEL_8;
  }

  sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_1E1AEFD5C();

  v5 = 0;
LABEL_9:
  v6 = sub_1E1AEFE6C();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

double sub_1E16BEF08()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v19 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  if (qword_1EE1F18B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  v9 = __swift_project_value_buffer(v8, qword_1EE1F18B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  v22 = v10;
  v11 = swift_allocObject();
  v21 = xmmword_1E1B02CC0;
  *(v11 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  v23 = v9;
  v24 = v8;
  sub_1E1AF548C();

  if (qword_1EE1E2FA8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  if (v25 == 1 && (swift_beginAccess(), *(v1 + 40) == 1) && (v12 = v1[4]) != 0)
  {
    v13 = sub_1E1AF649C();
    v14 = v19;
    (*(*(v13 - 8) + 56))(v19, 1, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v16 = v20;
    v15[4] = v12;
    v15[5] = v16;
    v17 = v12;
    sub_1E154AF74(0, 0, v14, &unk_1E1B28018, v15);
  }

  else
  {
    *(swift_allocObject() + 16) = v21;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  return result;
}

uint64_t sub_1E16BF390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a4;
  sub_1E1AF389C();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16BF464, 0, 0);
}

uint64_t sub_1E16BF464()
{
  if (qword_1EE1F18B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = sub_1E1AF591C();
  *(v0 + 288) = v2;
  *(v0 + 296) = __swift_project_value_buffer(v2, qword_1EE1F18B8);
  *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v3 = *(sub_1E1AF38EC() - 8);
  *(v0 + 312) = *(v3 + 72);
  *(v0 + 344) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v4 = [objc_allocWithZone(MEMORY[0x1E698DD68]) init];
  *(v0 + 320) = v4;
  v5 = [v1 ams_altDSID];
  [v4 setAltDSID_];

  v17 = MEMORY[0x1E69E7CC0];
  sub_1E135C088(0, 1, 0);
  v6 = v17;
  v8 = *(v17 + 16);
  v7 = *(v17 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_1E135C088((v7 > 1), v8 + 1, 1);
    v6 = v17;
  }

  *(v6 + 16) = v8 + 1;
  v9 = v6 + 16 * v8;
  *(v9 + 32) = 1397715576;
  *(v9 + 40) = 0xE400000000000000;
  v10 = sub_1E1AF620C();

  [v4 setOperatingSystems_];

  [v4 setIncludeUntrustedDevices_];
  v11 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
  *(v0 + 328) = v11;
  if (v11)
  {
    v12 = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1E16BF8BC;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A18, &qword_1E1B28028);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1E16BFFC8;
    *(v0 + 104) = &block_descriptor_48;
    *(v0 + 112) = v13;
    [v12 deviceListWithContext:v4 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 320);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E16BF8BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_1E16BFD34;
  }

  else
  {
    v2 = sub_1E16BF9CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16BF9CC()
{
  v1 = *(v0 + 232);

  if (v1)
  {
    v2 = [v1 deviceList];
    if (v2)
    {
      v3 = v2;
      sub_1E13006E4(0, &qword_1EE1E3478, 0x1E698DDD8);
      v4 = sub_1E1AF621C();

      if (v4 >> 62)
      {
        v5 = sub_1E1AF71CC();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = *(v0 + 280);
      sub_1E16C0660(v5 != 0);
      v7 = [objc_opt_self() standardUserDefaults];
      sub_1E1AEFE5C();
      v8 = sub_1E1AEFE6C();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_1E16C0098(v6);

      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      if (v4 >> 62)
      {
        v9 = sub_1E1AF71CC();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = *(v0 + 320);
      v12 = *(v0 + 328);

      *(v0 + 200) = MEMORY[0x1E69E6530];
      *(v0 + 176) = v9;
      sub_1E1AF385C();
      sub_1E1308058(v0 + 176, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF548C();

      goto LABEL_12;
    }

    v10 = *(v0 + 328);
  }

  else
  {
  }

  v11 = *(v0 + 320);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

LABEL_12:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E16BFD34(uint64_t a1)
{
  v3 = *(v1 + 328);
  v2 = *(v1 + 336);
  v4 = *(v1 + 320);
  swift_willThrow();

  _s3__C4CodeOMa_0(0);
  *(v1 + 240) = -14002;
  v5 = v2;
  sub_1E16C0A34();
  LOBYTE(v3) = sub_1E1AEF98C();

  if (v3)
  {

    sub_1E16C0660(0);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  else
  {
    v6 = *(v1 + 336);
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v7 = *(v1 + 208);
    v8 = *(v1 + 216);
    *(v1 + 168) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 144));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
    sub_1E1AF385C();
    sub_1E1308058(v1 + 144, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_1E16BFFC8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E16C0098(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1380BEC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &unk_1ECEBB780, &unk_1E1B029A0);
    v11 = sub_1E1AF5DBC();
    [v2 removeObjectForKey_];

    return sub_1E1308058(a1, &unk_1ECEBB780, &unk_1E1B029A0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1E1AEFD6C();
    v14 = v13;
    v15 = sub_1E1AF5DBC();
    [v2 setDouble:v15 forKey:v14];

    sub_1E1308058(a1, &unk_1ECEBB780, &unk_1E1B029A0);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_1E16C02D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v15 = v1;
  v3 = [v2 ams_activeiTunesAccount];
  v4 = *(v0 + 32);
  *(v0 + 32) = v3;
  v5 = v3;

  if (v5)
  {
    v6 = [v5 ams_altDSID];

    if (v6)
    {
      v7 = sub_1E1AF5DFC();
      v5 = v8;

      if (!v1)
      {
LABEL_10:
        v12 = 0;
        if (v5)
        {
          goto LABEL_11;
        }

LABEL_18:
        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0;
      if (!v1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = 0;
    if (!v1)
    {
      goto LABEL_10;
    }
  }

  v9 = [v15 ams_altDSID];
  if (v9)
  {
    v10 = v9;
    v1 = sub_1E1AF5DFC();
    v12 = v11;

    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v1 = 0;
  v12 = 0;
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v12)
  {
LABEL_19:

LABEL_20:
    if (qword_1EE1F18B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE1F18B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E16BEF08();
    goto LABEL_23;
  }

  if (v7 == v1 && v5 == v12)
  {

    return;
  }

  v14 = sub_1E1AF74AC();

  if ((v14 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
}

uint64_t AccountDeviceList.deinit()
{

  return v0;
}

uint64_t AccountDeviceList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1E16C0660(char a1)
{
  v1 = a1 & 1;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_1E1AF5DBC();
  v5 = [v3 BOOLForKey_];

  if (v5 != v1)
  {
    v6 = [v2 standardUserDefaults];
    v7 = sub_1E1AF5DBC();
    [v6 setBool:v1 forKey:v7];

    v8 = [objc_opt_self() defaultCenter];
    v9 = v8;
    if (qword_1ECEB0F98 != -1)
    {
      swift_once();
      v8 = v9;
    }

    [v8 postNotificationName:qword_1ECEF4608 object:0];
  }
}

uint64_t sub_1E16C07FC(void *a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  v3 = a1;

  v4 = [v3 ams_activeiTunesAccount];
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v2 selector:sel_storeAccountDidChange name:*MEMORY[0x1E69597D8] object:v3];

  return v2;
}

uint64_t sub_1E16C0974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5DC;

  return sub_1E16BF390(a1, v4, v5, v6);
}

unint64_t sub_1E16C0A34()
{
  result = qword_1EE1D24D0;
  if (!qword_1EE1D24D0)
  {
    _s3__C4CodeOMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D24D0);
  }

  return result;
}

uint64_t sub_1E16C0ACC(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VideoPlaybackCoordinator(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v4 = v22[0];
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5 && a1)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a1;
    v10 = v8(ObjectType, v6);
    v12 = v11;
    v13 = *(v6 + 8);
    v14 = v9;
    sub_1E14105C4(v10, v12, v9, v13);
  }

  v21 = a1;
  sub_1E13E71B4();
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A20, &qword_1E1B28090);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v19, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    (*(v17 + 8))(v4, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_1E16C0ED4(v19);
  }
}

uint64_t sub_1E16C0C80(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VideoPlaybackCoordinator(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v4 = v22[0];
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5 && a1)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a1;
    v10 = v8(ObjectType, v6);
    v12 = v11;
    v13 = *(v6 + 8);
    v14 = v9;
    sub_1E1410ADC(v10, v12, v9, v13, 0, 1);
  }

  v21 = a1;
  sub_1E13E71B4();
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A20, &qword_1E1B28090);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v19, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    (*(v17 + 16))(v4, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_1E16C0ED4(v19);
  }
}

uint64_t sub_1E16C0ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7A28, qword_1E1B28098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserNotificationsAuthorizationAction.__allocating_init()()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1E1AF3DFC();
  v5 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v6 = sub_1E1AF46DC();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v18, &v15);
  if (*(&v16 + 1))
  {
    v9 = v16;
    *v8 = v15;
    *(v8 + 16) = v9;
    *(v8 + 32) = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v1 + 8))(v3, v0);
    v14[1] = v10;
    v14[2] = v12;
    sub_1E1AF6F6C();
    sub_1E1308058(&v15, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v18, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  return v4;
}

uint64_t UserNotificationsAuthorizationAction.init()()
{
  v1 = v0;
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_1E1AF3E1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1E1AF3DFC();
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_1E138853C(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v28, &unk_1ECEB5670, qword_1E1B03EC0);
  v18 = v1 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_1E134B7C8(v8, v1 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

uint64_t UserNotificationsAuthorizationAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t UserNotificationsAuthorizationAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserNotificationsAuthorizationAction(uint64_t a1)
{
  result = qword_1EE1E6C68;
  if (!qword_1EE1E6C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorsChoiceLayout.init(metrics:badgeView:titleView:bodyView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 192);
  v9 = *(a1 + 208);
  v10 = (a5 + 120);
  v11 = *(a1 + 160);
  v10[11] = *(a1 + 176);
  v10[12] = v8;
  v10[13] = v9;
  v12 = *(a1 + 96);
  *(a5 + 232) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(a5 + 248) = *(a1 + 128);
  v10[9] = v13;
  v10[10] = v11;
  v14 = *(a1 + 32);
  *(a5 + 168) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(a5 + 184) = *(a1 + 64);
  *(a5 + 200) = v15;
  *(a5 + 216) = v12;
  v16 = *(a1 + 16);
  *(a5 + 120) = *a1;
  *(a5 + 136) = v16;
  *(a5 + 344) = *(a1 + 224);
  *(a5 + 152) = v14;
  sub_1E1308EC0(a2, a5);
  sub_1E1308EC0(a3, a5 + 40);

  return sub_1E1308EC0(a4, a5 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.init(badgeTopSpace:badgeBottomSpace:titleTopSpace:titleBottomSpace:bodyBottomSpace:marginInsets:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_1E1308EC0(a1, a6);
  sub_1E1308EC0(a2, (a6 + 5));
  sub_1E1308EC0(a3, (a6 + 10));
  sub_1E1308EC0(a4, (a6 + 15));
  result = sub_1E1308EC0(a5, (a6 + 20));
  a6[25] = a7;
  a6[26] = a8;
  a6[27] = a9;
  a6[28] = a10;
  return result;
}

uint64_t EditorsChoiceLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t EditorsChoiceLayout.Metrics.badgeBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t EditorsChoiceLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.titleBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t EditorsChoiceLayout.Metrics.bodyBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_1E1308EC0(a1, v1 + 160);
}

void EditorsChoiceLayout.Metrics.marginInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[28] = a4;
}

__n128 EditorsChoiceLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 sub_1E16C1C10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

double EditorsChoiceLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v23 = sub_1E1AF745C();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6B5C();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  v9 = sub_1E1AF117C();
  v10 = 15;
  if (v9)
  {
    v10 = 25;
  }

  v11 = 18;
  if (v9)
  {
    v11 = 28;
  }

  v12 = 160;
  if (v9)
  {
    v12 = 240;
  }

  v22 = v12;
  v13 = 184;
  if (v9)
  {
    v13 = 264;
  }

  v21 = v13;
  v14 = v3[v11];
  __swift_project_boxed_opaque_existential_1Tm(&v4[v10], v4[v11]);
  sub_1E13BC274(v14);
  sub_1E1AF12DC();
  v15 = *(v6 + 8);
  v16 = v23;
  v15(v8, v23);
  v17 = *(v4 + v21);
  __swift_project_boxed_opaque_existential_1Tm((v4 + v22), v17);
  sub_1E13BC274(v17);
  sub_1E1AF12DC();
  v15(v8, v16);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
  sub_1E1AF11CC();
  v18 = v4[38];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 35, v18);
  sub_1E13BC274(v18);
  sub_1E1AF12DC();
  v15(v8, v16);
  return a2;
}

uint64_t EditorsChoiceLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v54 = a2;
  v57 = sub_1E1AF1D6C();
  v53 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v44 - v13;
  v14 = sub_1E1AF745C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a3;
  v56 = a4;
  v51 = a5;
  v52 = a6;
  sub_1E1AF6B0C();
  v19 = v18;
  v21 = v20;
  v58 = v22;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  v25 = sub_1E1AF117C();
  v26 = (v15 + 8);
  v47 = v21;
  v48 = v19;
  if (v25)
  {
    v27 = v6[28];
    __swift_project_boxed_opaque_existential_1Tm(v6 + 25, v27);
    sub_1E13BC274(v27);
    v28 = sub_1E1AF12DC();
    v29 = *v26;
    (*v26)(v17, v14);
    v30 = v6[33];
    __swift_project_boxed_opaque_existential_1Tm(v6 + 30, v30);
    sub_1E13BC274(v30);
    v45 = sub_1E1AF12DC();
    v29(v17, v14);
    __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v6[8]);
    v31 = v58;
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v6[8]);
    v59.origin.x = v19;
    v59.origin.y = v21;
    v59.size.width = v31;
    v32 = v24;
    v59.size.height = v24;
    CGRectGetMinX(v59);
  }

  else
  {
    v33 = v6[18];
    __swift_project_boxed_opaque_existential_1Tm(v6 + 15, v33);
    sub_1E13BC274(v33);
    v28 = sub_1E1AF12DC();
    v29 = *v26;
    (*v26)(v17, v14);
    v34 = v6[23];
    __swift_project_boxed_opaque_existential_1Tm(v6 + 20, v34);
    sub_1E13BC274(v34);
    v45 = sub_1E1AF12DC();
    v29(v17, v14);
    __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
    v35 = v58;
    sub_1E1AF11CC();
    v37 = v36;
    v60.origin.x = v19;
    v60.origin.y = v21;
    v60.size.width = v35;
    v32 = v24;
    v60.size.height = v24;
    floor(CGRectGetMidX(v60) + v37 * -0.5);
    __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  }

  sub_1E1AF116C();
  v46 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v6[13]);
  v38 = v58;
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v6[13]);
  v61.origin.y = v47;
  v61.origin.x = v48;
  v61.size.width = v38;
  v61.size.height = v32;
  CGRectGetMinX(v61);
  sub_1E1AF116C();
  v39 = v6[38];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 35, v39);
  sub_1E13BC274(v39);
  sub_1E1AF12DC();
  v29(v17, v14);
  v62.origin.x = v55;
  v62.origin.y = v56;
  v62.size.width = v51;
  v62.size.height = v52;
  CGRectGetWidth(v62);
  v40 = v49;
  sub_1E1AF1D4C();
  v41 = v53;
  v42 = v57;
  (*(v53 + 16))(v50, v40, v57);
  sub_1E1AF10CC();
  return (*(v41 + 8))(v40, v42);
}

uint64_t AppPromotionDetailPagePresenter.__allocating_init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1E16C2BC4(a1, a2);

  return v4;
}

uint64_t AppPromotionDetailPagePresenter.init(objectGraph:appPromotionDetailPage:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E16C2BC4(a1, a2);

  return v2;
}

double sub_1E16C26A0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1E16C270C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

double sub_1E16C27AC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = qword_1EE1EC290;

    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EE1EC298[0];
    v5 = v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v5 = v4;
    *(v5 + 8) = 0;
    v6 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  v7 = v1 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(*(v1 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v9);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E16C2950()
{
  type metadata accessor for ContingentOfferDetailPage(0);
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for OfferItemDetailPage(0);
  result = swift_dynamicCastClass();
  if (result)
  {
  }

  return result;
}

double sub_1E16C29E0()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(*(v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage), ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E16C2AA8()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view);
}

uint64_t AppPromotionDetailPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view);

  return v0;
}

uint64_t AppPromotionDetailPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;

  sub_1E1337DEC(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16C2BC4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_appPromotionDetailPage) = a2;

  v5 = sub_1E138C578(a1, 0, 0, 0);
  v7[3] = type metadata accessor for AppPromotionDetailPage(0);
  v7[4] = &protocol witness table for BasePage;
  v7[5] = sub_1E16C2E6C();
  v7[0] = a2;
  swift_beginAccess();

  sub_1E13891EC(v7, v5 + 40);
  swift_endAccess();
  sub_1E138B568();

  sub_1E14A07C4(v7);
  return v5;
}

uint64_t type metadata accessor for AppPromotionDetailPagePresenter(uint64_t a1)
{
  result = qword_1ECEB7A38;
  if (!qword_1ECEB7A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E16C2E6C()
{
  result = qword_1ECEB7A48;
  if (!qword_1ECEB7A48)
  {
    type metadata accessor for AppPromotionDetailPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7A48);
  }

  return result;
}

double PaginatedPagePresenterState.nextPage.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1E136073C(v1, v5);
  if (v7)
  {
    sub_1E1301CF0(v5, a1);
  }

  else
  {

    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1E16C2F3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E16C2F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E16C2FC4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t Copyable.copyWithOverrides(in:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, v9);
  (*(a3 + 8))(v11, a2, a3);
  return a1(a4);
}

double sub_1E16C3118(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E13006E4(0, &qword_1EE1E32C0, 0x1E698B488);
    v4 = sub_1E1AF621C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t DeviceAppStateDataSource.Store.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

char *DeviceAppStateDataSource.__allocating_init(for:isBetaAppsDataSource:)(char *a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return DeviceAppStateDataSource.init(for:isBetaAppsDataSource:)(a1, v3);
}

char *DeviceAppStateDataSource.init(for:isBetaAppsDataSource:)(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_1E1AF68DC();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35[4] = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF68AC();
  v35[1] = *(v10 - 8);
  v35[2] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35[3] = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF58EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = sub_1E1AF591C();
  v16 = *(v35[0] - 8);
  MEMORY[0x1EEE9AC00](v35[0]);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_previouslyInstalledLibraryItems] = 0;
  v20 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
  v21 = MEMORY[0x1E69E7CC0];
  *&v3[v20] = sub_1E15A1C2C(MEMORY[0x1E69E7CC0]);
  v22 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_greenTeaLogger;
  *&v3[v22] = [objc_allocWithZone(ASKGreenTeaLogger) init];
  v23 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
  *&v3[v23] = sub_1E159F67C(v21);
  v24 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  *&v3[v24] = sub_1E15A1D48(v21);
  v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_store] = v19;
  v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource] = a2;
  v25 = objc_opt_self();
  if ((a2 & 1) == 0)
  {
    v29 = [v25 queryForStoreApps];
    *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_appQuery] = v29;
    v28 = &enum case for PaginatedPagePresenterState.preparingNextPage(_:);
    v27 = 0xD000000000000018;
    if (qword_1EE1E3588 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v26 = [v25 queryForBetaApps];
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_appQuery] = v26;
  v27 = 0xD000000000000021;
  v28 = "appPromotionDetailPage";
  if (qword_1EE1E3588 != -1)
  {
LABEL_3:
    swift_once();
  }

LABEL_5:
  v30 = __swift_project_value_buffer(v12, qword_1EE2160F8);
  (*(v13 + 16))(v15, v30, v12);
  sub_1E1AF590C();
  (*(v16 + 32))(&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_logger], v18, v35[0]);
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v40 = v27;
  v41 = v28 | 0x8000000000000000;
  MEMORY[0x1E68FECA0](0x517373656363612ELL, 0xEC00000065756575);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80, &unk_1E1B26740);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v40 = v31;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
  *&v3[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_accessQueue] = sub_1E1AF692C();
  v32 = type metadata accessor for DeviceAppStateDataSource(0);
  v39.receiver = v3;
  v39.super_class = v32;
  v33 = objc_msgSendSuper2(&v39, sel_init);
  [*&v33[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_appQuery] setObserver_];
  return v33;
}

double sub_1E16C3914(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1E16C3980(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C3A20;
}

double sub_1E16C3A34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1E16C3A9C()
{
  swift_beginAccess();

  return result;
}

double sub_1E16C3AE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E16C3B9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v169 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    goto LABEL_114;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v132 = a2;
    if (v6)
    {
      break;
    }

    v93 = MEMORY[0x1E69E7CD0];
LABEL_95:
    sub_1E16C5004(v93, a4, a5);
    v95 = v94;

    swift_beginAccess();

    sub_1E19B5A4C(v96);
    a1 = swift_endAccess();
    v97 = 0;
    a2 = v95 + 56;
    v98 = 1 << *(v95 + 32);
    v99 = -1;
    if (v98 < 64)
    {
      v99 = ~(-1 << v98);
    }

    v100 = v99 & *(v95 + 56);
    v101 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
    v102 = (v98 + 63) >> 6;
    while (v100)
    {
LABEL_105:
      swift_beginAccess();

      v104 = sub_1E15A47D8();
      if (v105)
      {
        v106 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *(v132 + v101);
        *v164 = v108;
        *(v132 + v101) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1E141A338();
          v108 = *v164;
        }

        sub_1E1414BE0(v106, v108);
        *(v132 + v101) = v108;
      }

      v100 &= v100 - 1;
      swift_endAccess();
    }

    while (1)
    {
      v103 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v103 >= v102)
      {
      }

      v100 = *(a2 + 8 * v103);
      ++v97;
      if (v100)
      {
        v97 = v103;
        goto LABEL_105;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    v110 = a1;
    v111 = a4;
    v112 = sub_1E1AF71CC();
    a4 = v111;
    v6 = v112;
    a1 = v110;
  }

  v115 = a4;
  v119 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  v127 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource;
  v117 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_store;
  v130 = a1 & 0xC000000000000001;
  v131 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
  v7 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  v8 = a1;
  v123 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
  swift_beginAccess();
  v125 = v7;
  a1 = swift_beginAccess();
  v9 = v8;
  v10 = 0;
  v122 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = &selRef_remoteDownloadIdentifiersDidChange_;
  v12 = &selRef_addPayment_;
  v128 = v6;
  v129 = v8;
  while (1)
  {
    if (v130)
    {
      a1 = MEMORY[0x1E68FFD80](v10, v9);
    }

    else
    {
      if (v10 >= *(v122 + 16))
      {
        goto LABEL_112;
      }

      a1 = *(v9 + 8 * v10 + 32);
    }

    v13 = a1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_110;
    }

    v133 = v10 + 1;
    if ([a1 v11[69]])
    {
      break;
    }

LABEL_36:
    if ([v13 v12[158]] == *(a2 + v127))
    {
      if ([v13 isFamilyShared] && (objc_msgSend(v13, sel_isOpenable) & 1) == 0 && (objc_msgSend(v13, sel_isUpdateAvailable) & 1) == 0)
      {
        v46 = [v13 progress];
        if (!v46)
        {
          goto LABEL_5;
        }
      }

      if ([v13 isInstalled])
      {
        goto LABEL_45;
      }

      v47 = [v13 progress];
      if (v47)
      {

LABEL_45:
        *&v149 = [v13 v11[69]];
        v48 = sub_1E1AF742C();
        v50 = v49;

        sub_1E18943C0(&v149, v48, v50);

        v51 = *(a2 + v123);
        if (*(v51 + 16))
        {

          v52 = sub_1E15A47D8();
          if (v53)
          {
            v54 = *(*(v51 + 56) + 24 * v52);

            v55 = [v13 storeExternalVersionID] < v54;
          }

          else
          {

            v55 = 0;
          }
        }

        else
        {
          v55 = 0;
        }

        sub_1E16C4A64(v13, v55, &v149);
        v166 = v149;
        v167 = v150;
        v168 = v151;
        if ((v152 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
        {
          if (([v13 isUpdateAvailable] & 1) != 0 && (v56 = objc_msgSend(v13, sel_updateBuyParams)) != 0)
          {
            v57 = v56;
            v58 = sub_1E1AF5DFC();
            v60 = v59;

            if ([v13 v12[158]])
            {

              goto LABEL_55;
            }

            v65 = v114 & 0x101 | 0x2000000000000000;
            *v164 = v58;
            *&v164[8] = v60;
            v114 &= 0x101u;
LABEL_64:
            *&v165 = v65;
          }

          else
          {
LABEL_55:
            if ([v13 hasMessagesExtension] && (*(a2 + v117) == 1 || objc_msgSend(v13, sel_isLaunchProhibited)))
            {
              v61 = [v13 storeExternalVersionID];
              v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
              *v164 = 1;
              *&v164[8] = v62;
              v118 = v118 & 0x101 | 0x7000000000000000;
              *&v165 = v118;
            }

            else
            {
              if (![v13 isLaunchProhibited])
              {
                v63 = [v13 storeExternalVersionID];
                v64 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
                v65 = v116 & 0x101 | 0x7000000000000000;
                *v164 = 0;
                *&v164[8] = v64;
                v116 &= 0x101u;
                goto LABEL_64;
              }

              *v164 = 1;
              memset(&v164[8], 0, 40);
              v165 = xmmword_1E1B11BA0;
            }
          }
        }

        else
        {
          *v164 = v166;
          *&v164[16] = v167;
          *&v164[32] = v168;
          v165 = v152;
        }

        if (([v13 v12[158]] & 1) == 0 && v165 >> 60 == 7)
        {
          v66 = *(a2 + v123);
          if (*(v66 + 16))
          {

            v67 = sub_1E15A47D8();
            if (v68)
            {
              v69 = (*(v66 + 56) + 24 * v67);
              v71 = *v69;
              v70 = v69[1];
              v72 = v69[2];

              if ([v13 storeExternalVersionID] < v71)
              {
                sub_1E1308058(v164, &unk_1ECEB7B50, &qword_1E1B16990);
                *&v160 = v70;
                *(&v160 + 1) = v72;
                v113 = v113 & 0x101 | 0x2000000000000000;
                *&v163 = v113;
                goto LABEL_75;
              }

              swift_beginAccess();
              sub_1E1496DE0();
              swift_endAccess();
            }
          }
        }

        v160 = *v164;
        v161 = *&v164[16];
        v162 = *&v164[32];
        v163 = v165;
LABEL_75:
        v73 = *(a2 + v125);
        v126 = v50;
        v124 = v48;
        if (*(v73 + 16))
        {

          v74 = sub_1E15A47D8();
          if (v75)
          {
            v76 = (*(v73 + 56) + (v74 << 6));
            v78 = v76[2];
            v77 = v76[3];
            v79 = v76[1];
            v149 = *v76;
            v150 = v79;
            v151 = v78;
            v152 = v77;
            v81 = *(&v149 + 1);
            v80 = v149;
            v83 = *(&v79 + 1);
            v82 = v79;
            v120 = *(&v78 + 1);
            v84 = v78;
            v86 = *(&v77 + 1);
            v85 = v77;
            sub_1E141CF5C(&v149, &v145);

            v157 = v160;
            v158 = v161;
            v87 = v163;
            v159 = v162;
            if ((v85 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
            {
              v88 = v86;
              v89 = v120;
              goto LABEL_81;
            }

            v149 = __PAIR128__(v81, v80);
            v150 = __PAIR128__(v83, v82);
            v151 = __PAIR128__(v120, v84);
            v152 = __PAIR128__(v86, v85);
            v145 = __PAIR128__(v81, v80);
            v146 = __PAIR128__(v83, v82);
            v147 = __PAIR128__(v120, v84);
            v148 = __PAIR128__(v86, v85);
            v88 = v86;
            if ((v163 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
            {
              v121 = v163;
              v141 = v149;
              v142 = v150;
              v143 = v151;
              v144 = v152;
              sub_1E15572B0(&v160, v140);
              sub_1E15572B0(&v149, v140);
              sub_1E139CEA8(&v141);
              v89 = v120;
              goto LABEL_85;
            }

            v135 = v160;
            v136 = v161;
            v137 = v162;
            v138 = v163;
            sub_1E15572B0(&v160, v134);
            sub_1E15572B0(&v149, v134);
            v92 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v145, &v135);
            v139[0] = v135;
            v139[1] = v136;
            v139[2] = v137;
            v139[3] = v138;
            sub_1E139CEA8(v139);
            v140[0] = v145;
            v140[1] = v146;
            v140[2] = v147;
            v140[3] = v148;
            sub_1E139CEA8(v140);
            v141 = __PAIR128__(v81, v80);
            v142 = __PAIR128__(v83, v82);
            v143 = __PAIR128__(v120, v84);
            v144 = __PAIR128__(v86, v85);
            sub_1E1308058(&v141, &unk_1ECEB7B50, &qword_1E1B16990);
            if ((v92 & 1) == 0)
            {
              goto LABEL_86;
            }

            v90 = &v160;
LABEL_83:
            a1 = sub_1E1308058(v90, &unk_1ECEB7B50, &qword_1E1B16990);
            a2 = v132;
            v11 = &selRef_remoteDownloadIdentifiersDidChange_;
            v12 = &selRef_addPayment_;
            goto LABEL_6;
          }
        }

        v88 = 0;
        v89 = 0;
        v84 = 0;
        v83 = 0;
        v82 = 0;
        v81 = 0;
        v80 = 0;
        v157 = v160;
        v158 = v161;
        v87 = v163;
        v159 = v162;
        v85 = 0x3FFFFFEFELL;
LABEL_81:
        if ((v87 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          v121 = v87;
          sub_1E15572B0(&v160, &v149);
LABEL_85:
          *&v149 = v80;
          *(&v149 + 1) = v81;
          *&v150 = v82;
          *(&v150 + 1) = v83;
          *&v151 = v84;
          *(&v151 + 1) = v89;
          *&v152 = v85;
          *(&v152 + 1) = v88;
          v153 = v157;
          v154 = v158;
          v155 = v159;
          v156 = v121;
          sub_1E1308058(&v149, &qword_1ECEB5668, &unk_1E1B16B30);
LABEL_86:
          a2 = v132;
          v11 = &selRef_remoteDownloadIdentifiersDidChange_;
          v12 = &selRef_addPayment_;
          swift_beginAccess();
          v170[0] = v160;
          v170[1] = v161;
          v170[2] = v162;
          v170[3] = v163;
          v149 = v160;
          v150 = v161;
          v151 = v162;
          v152 = v163;
          sub_1E141CF5C(&v149, &v145);
          v91 = swift_isUniquelyReferenced_nonNull_native();
          *&v145 = *(v132 + v125);
          *(v132 + v125) = 0x8000000000000000;
          sub_1E159A1B0(v170, v124, v126, v91);
          *(v132 + v125) = v145;
          swift_endAccess();
          swift_beginAccess();
          sub_1E18943C0(&v141, v124, v126);
          swift_endAccess();

          sub_1E1308058(&v160, &unk_1ECEB7B50, &qword_1E1B16990);

          goto LABEL_6;
        }

        sub_1E15572B0(&v160, &v149);

        sub_1E1308058(&v160, &unk_1ECEB7B50, &qword_1E1B16990);
        *&v149 = v80;
        *(&v149 + 1) = v81;
        *&v150 = v82;
        *(&v150 + 1) = v83;
        *&v151 = v84;
        *(&v151 + 1) = v89;
        *&v152 = v85;
        *(&v152 + 1) = v88;
        v90 = &v149;
        goto LABEL_83;
      }
    }

LABEL_5:

LABEL_6:
    ++v10;
    v9 = v129;
    if (v133 == v128)
    {
      v93 = v169;
      a4 = v115;
      goto LABEL_95;
    }
  }

  *&v149 = [v13 v11[69]];
  v14 = sub_1E1AF742C();
  v16 = v15;
  v17 = [v13 bundleID];
  v18 = sub_1E1AF5DFC();
  v20 = v19;

  swift_beginAccess();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *v164 = *(a2 + v131);
  v22 = *v164;
  *(a2 + v131) = 0x8000000000000000;
  a2 = sub_1E13018F8(v18, v20);
  v24 = *(v22 + 16);
  v25 = (v23 & 1) == 0;
  a1 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_111;
  }

  v26 = v23;
  if (*(v22 + 24) >= a1)
  {
    if (v21)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1E1416CE8();
      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_21;
  }

  sub_1E168A744(a1, v21);
  a1 = sub_1E13018F8(v18, v20);
  if ((v26 & 1) == (v27 & 1))
  {
    a2 = a1;
    if ((v26 & 1) == 0)
    {
LABEL_17:
      v28 = *v164;
      *(*v164 + 8 * (a2 >> 6) + 64) |= 1 << a2;
      v29 = (v28[6] + 16 * a2);
      *v29 = v18;
      v29[1] = v20;
      v30 = (v28[7] + 16 * a2);
      *v30 = v14;
      v30[1] = v16;
      v31 = v28[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_113;
      }

      v28[2] = v33;
LABEL_22:
      a2 = v132;
      *(v132 + v131) = v28;
      swift_endAccess();
      v12 = &selRef_addPayment_;
      if ([v13 isBetaApp])
      {
        v35 = [v13 bundleShortVersion];
        if (v35)
        {
          v36 = v35;
          v37 = sub_1E1AF5DFC();
          v39 = v38;

          v40 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v40 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v40)
          {
            goto LABEL_32;
          }
        }

        v41 = [v13 bundleVersion];
        if (v41)
        {
          v42 = v41;
          v37 = sub_1E1AF5DFC();
          v39 = v43;

          v44 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v44 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v44)
          {
LABEL_32:
            swift_beginAccess();
            v45 = swift_isUniquelyReferenced_nonNull_native();
            *v164 = *(v132 + v119);
            *(v132 + v119) = 0x8000000000000000;
            sub_1E159B9B8(v37, v39, v14, v16, v45);

            *(v132 + v119) = *v164;
            swift_endAccess();
LABEL_35:
            v11 = &selRef_remoteDownloadIdentifiersDidChange_;
            goto LABEL_36;
          }
        }
      }

      goto LABEL_35;
    }

LABEL_21:

    v28 = *v164;
    v34 = (*(*v164 + 56) + 16 * a2);
    *v34 = v14;
    v34[1] = v16;

    goto LABEL_22;
  }

  result = sub_1E1AF757C();
  __break(1u);
  return result;
}