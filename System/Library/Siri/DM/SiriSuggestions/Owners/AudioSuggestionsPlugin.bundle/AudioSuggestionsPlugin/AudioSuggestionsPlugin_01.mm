double sub_15BA4()
{
  v0 = sub_1B394();
  v65 = *(v0 - 8);
  v66 = v0;
  __chkstk_darwin(v0);
  v64 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_3578(&qword_24670, &qword_1C100);
  __chkstk_darwin(v2 - 8);
  v61 = (&v58 - v3);
  v62 = sub_1B4D4();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B464();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  *&v76 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v58 - v10;
  __chkstk_darwin(v9);
  v13 = &v58 - v12;
  if (qword_24458 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v14 = qword_24460;
    v63 = qword_25C80;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = *(qword_25C88 + 16);

    v75 = v15;
    if (!v15)
    {
      break;
    }

    v17 = 0;
    v73 = v6 + 16;
    LODWORD(v72) = enum case for DeviceType.mac(_:);
    v70 = (v6 + 32);
    v71 = v6 + 104;
    v77 = _swiftEmptyArrayStorage;
    v68 = v13;
    v69 = v11;
    v74 = v16;
    v67 = v6 + 8;
    while (v17 < *(v16 + 16))
    {
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = *(v6 + 72);
      (*(v6 + 16))(v13, v16 + v18 + v19 * v17, v5);
      (*(v6 + 104))(v11, v72, v5);
      sub_1B024(&qword_24D78, &type metadata accessor for DeviceType, &protocol conformance descriptor for DeviceType);
      v20 = sub_1B8C4();
      v21 = *(v6 + 8);
      v21(v11, v5);
      if (v20)
      {
        v21(v13, v5);
      }

      else
      {
        v22 = *v70;
        (*v70)(v76, v13, v5);
        v23 = v77;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v78 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A314(0, v23[2] + 1, 1);
          v23 = v78;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_1A314((v25 > 1), v26 + 1, 1);
          v23 = v78;
        }

        v77 = v23;
        v23[2] = v26 + 1;
        v22(v23 + v18 + v26 * v19, v76, v5);
        v13 = v68;
        v11 = v69;
      }

      ++v17;
      v16 = v74;
      if (v75 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v77 = _swiftEmptyArrayStorage;
LABEL_16:

  v74 = 0x800000000001D5F0;
  v75 = 0x800000000001D430;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v27 = (type metadata accessor for SignalDefinition(0) - 8);
  v28 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
  v29 = swift_allocObject();
  v76 = xmmword_1BF10;
  v73 = v29;
  *(v29 + 16) = xmmword_1BF10;
  v30 = (v29 + v28);
  v31 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v32 = v60;
  v33 = *(v60 + 104);
  v34 = v59;
  LODWORD(v71) = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v35 = v62;
  (v33)(v59, enum case for DeliveryVehicle.assistantSuggestions(_:), v62);
  v70 = v33;
  v72 = sub_D9B8(4u, v34);
  v36 = *(v32 + 8);
  v32 += 8;
  v36(v34, v35);
  v37 = sub_3578(&qword_24D48, &qword_1CDF0);
  v68 = *(v32 + 64);
  v69 = v37;
  v38 = (*(v32 + 72) + 32) & ~*(v32 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = v76;
  (v33)(v39 + v38, v31, v35);
  v40 = v61;
  *v61 = v39;
  v41 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v42 = sub_1B624();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v40, v41, v42);
  (*(v43 + 56))(v40, 0, 1, v42);
  v44 = v30 + v27[8];
  *(v44 + 4) = 0;
  *v44 = 0u;
  *(v44 + 1) = 0u;
  *v30 = v72;
  sub_1AC78(v40, v30 + v27[7]);
  v72 = 0x800000000001CF50;
  sub_3578(&qword_24D70, &qword_1CE08);
  sub_1B5A4();
  v45 = swift_allocObject();
  *(v45 + 16) = v76;
  sub_1B5C4();
  v46 = v68;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C490;
  v48 = enum case for SiriHintsMode.display(_:);
  v49 = sub_1B414();
  (*(*(v49 - 8) + 104))(v47 + v38, v48, v49);
  v50 = v70;
  (v70)(v47 + v38, enum case for DeliveryVehicle.siriHints(_:), v35);
  (v50)(&v46[v47 + v38], v71, v35);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v79 + 1) = sub_1B444();
  v80 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v78);
  sub_1B434();
  sub_3578(&qword_24D60, &qword_1CE00);
  v51 = swift_allocObject();
  *(v51 + 16) = v76;
  v52 = v64;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v54 = swift_allocObject();
  v55 = v66;
  v54[5] = v66;
  v54[6] = &protocol witness table for SubscriptionProvider;
  v56 = sub_35C0(v54 + 2);
  (*(v65 + 32))(v56, v52, v55);
  *(v51 + 56) = PartyMusicSubscriber;
  *(v51 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber, &protocol conformance descriptor for FirstPartyMusicSubscriber);
  *(v51 + 32) = v54;
  qword_25FD8 = 0xD000000000000021;
  unk_25FE0 = v74;
  qword_25FE8 = 0xD000000000000056;
  qword_25FF0 = v75;
  unk_25FF8 = v63;
  qword_26000 = v77;
  unk_26008 = v73;
  qword_26010 = 0xD000000000000010;
  unk_26018 = v72;
  qword_26020 = 0xD000000000000010;
  unk_26028 = 0x800000000001D490;
  word_26030 = 260;
  qword_26038 = 0;
  unk_26040 = 0;
  qword_26048 = &off_20CA8;
  unk_26050 = v45;
  result = *&v79;
  unk_26080 = v79;
  qword_26058 = v47;
  unk_26060 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26068 = 0;
  unk_26070 = v78;
  qword_26090 = v80;
  qword_26098 = _swiftEmptyArrayStorage;
  unk_260A0 = v51;
  return result;
}

uint64_t sub_16610()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v4 = qword_25C80;
  v5 = qword_24460;

  if (v5 != -1)
  {
    swift_once();
  }

  v28 = 0x800000000001D5D0;
  v29 = 0x800000000001D430;
  v6 = qword_25C88;
  v7 = enum case for DeliveryVehicle.siriHelp(_:);
  v8 = *(v1 + 104);
  v8(v3, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v25 = sub_D9B8(5u, v3);
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  v10(v3, v0);
  v26 = 0x800000000001D490;
  v27 = 0x800000000001D4B0;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v11 = *(v9 + 64);
  v12 = (*(v9 + 72) + 32) & ~*(v9 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C490;
  v14 = v13 + v12;
  v8(v14, v7, v0);
  v8((v14 + v11), enum case for DeliveryVehicle.siriAutoComplete(_:), v0);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v31 + 1) = sub_1B444();
  v32 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v30);
  sub_1B434();
  sub_3578(&qword_24D40, &qword_1CDE8);
  v15 = (type metadata accessor for SignalDefinition(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BF10;
  v18 = (v17 + v16);
  v19 = v15[7];
  *(v17 + v16 + v19) = v13;
  v20 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v21 = sub_1B624();
  v22 = *(v21 - 8);
  (*(v22 + 104))(&v18[v19], v20, v21);
  (*(v22 + 56))(&v18[v19], 0, 1, v21);
  v23 = &v18[v15[8]];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *v18 = v25;
  qword_260A8 = 0xD00000000000001ALL;
  qword_260B0 = v28;
  unk_260B8 = 0xD000000000000056;
  qword_260C0 = v29;
  unk_260C8 = v4;
  qword_260D0 = v6;
  unk_260D8 = v17;
  qword_260E0 = 0x6973754D79616C70;
  qword_260E8 = 0xE900000000000063;
  unk_260F0 = 0xD000000000000010;
  qword_260F8 = v26;
  word_26100 = 261;
  qword_26108 = 0xD000000000000011;
  unk_26110 = v27;
  qword_26118 = 0;
  unk_26120 = 0;
  unk_26150 = v31;
  qword_26128 = v13;
  unk_26130 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26138 = 0;
  unk_26140 = v30;
  qword_26160 = v32;
  unk_26168 = _swiftEmptyArrayStorage;
  qword_26170 = _swiftEmptyArrayStorage;
}

uint64_t sub_16AB8(void *a1)
{
  v2 = [a1 mediaItems];
  if (v2)
  {
    v3 = v2;
    sub_47E0(0, &qword_246C0, INMediaItem_ptr);
    v4 = sub_1B944();

    v5 = v4 >> 62 ? sub_1BA84() : *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));

    if (v5)
    {
      return 0;
    }
  }

  v6 = [a1 mediaContainer];
  if (v6)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_16B88()
{
  v0 = sub_1B394();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v8 = qword_24460;
  v39 = qword_25C80;

  if (v8 != -1)
  {
    swift_once();
  }

  v37 = 0x800000000001D510;
  v38 = 0x800000000001D430;
  v36 = qword_25C88;
  v9 = enum case for DeliveryVehicle.siriHelp(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DeliveryVehicle.siriHelp(_:), v4);

  v33 = sub_D9B8(6u, v7);
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v12(v7, v4);
  v34 = 0x800000000001D490;
  v35 = 0x800000000001D4B0;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v13 = *(v11 + 64);
  v14 = (*(v11 + 72) + 32) & ~*(v11 + 72);
  v15 = swift_allocObject();
  v32 = xmmword_1C490;
  *(v15 + 16) = xmmword_1C490;
  v16 = v15 + v14;
  v10(v16, v9, v4);
  v10((v16 + v13), enum case for DeliveryVehicle.siriAutoComplete(_:), v4);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v41 + 1) = sub_1B444();
  v42 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v40);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v17 = swift_allocObject();
  *(v17 + 16) = v32;
  *(v17 + 56) = &type metadata for SongNameParameterBuilder;
  *(v17 + 64) = &off_21320;
  *(v17 + 32) = 256;
  *(v17 + 96) = &type metadata for ArtistNameParameterBuilder;
  *(v17 + 104) = &off_21428;
  *(v17 + 72) = 1;
  sub_3578(&qword_24D60, &qword_1CE00);
  v18 = swift_allocObject();
  v32 = xmmword_1BF10;
  *(v18 + 16) = xmmword_1BF10;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v20 = swift_allocObject();
  v20[5] = v0;
  v20[6] = &protocol witness table for SubscriptionProvider;
  v21 = sub_35C0(v20 + 2);
  (*(v1 + 32))(v21, v3, v0);
  *(v18 + 56) = PartyMusicSubscriber;
  *(v18 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber, &protocol conformance descriptor for FirstPartyMusicSubscriber);
  *(v18 + 32) = v20;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v22 = (type metadata accessor for SignalDefinition(0) - 8);
  v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v32;
  v25 = (v24 + v23);
  v26 = v22[7];
  *&v25[v26] = v15;
  v27 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v28 = sub_1B624();
  v29 = *(v28 - 8);
  (*(v29 + 104))(&v25[v26], v27, v28);
  (*(v29 + 56))(&v25[v26], 0, 1, v28);
  v30 = &v25[v22[8]];
  *(v30 + 4) = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *v25 = v33;
  qword_26178 = 0xD000000000000019;
  qword_26180 = v37;
  unk_26188 = 0xD000000000000056;
  qword_26190 = v38;
  unk_26198 = v39;
  qword_261A0 = v36;
  unk_261A8 = v24;
  qword_261B0 = 0x5979425879616C70;
  qword_261B8 = 0xE800000000000000;
  unk_261C0 = 0xD000000000000010;
  qword_261C8 = v34;
  word_261D0 = 262;
  qword_261D8 = 0xD000000000000011;
  unk_261E0 = v35;
  qword_261E8 = 0;
  unk_261F0 = 0;
  unk_26220 = v41;
  qword_261F8 = v15;
  unk_26200 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26208 = 0;
  unk_26210 = v40;
  qword_26230 = v42;
  unk_26238 = v17;
  qword_26240 = v18;
}

uint64_t sub_171CC()
{
  if (sub_12250(&off_20EE0))
  {
    return sub_11D0C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1720C()
{
  v0 = sub_1B394();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24450 != -1)
  {
    swift_once();
  }

  v8 = qword_24460;
  v35 = qword_25C78;

  if (v8 != -1)
  {
    swift_once();
  }

  v33 = 0x800000000001D4F0;
  v34 = 0x800000000001D430;
  v32 = qword_25C88;
  v9 = enum case for DeliveryVehicle.siriHelp(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DeliveryVehicle.siriHelp(_:), v4);

  v29 = sub_D9B8(7u, v7);
  (*(v5 + 8))(v7, v4);
  v30 = 0x800000000001D490;
  v31 = 0x800000000001D4B0;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v36 = xmmword_1BF10;
  *(v12 + 16) = xmmword_1BF10;
  v10((v12 + v11), v9, v4);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v38 + 1) = sub_1B444();
  v39 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v37);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v13 = swift_allocObject();
  *(v13 + 16) = v36;
  *(v13 + 56) = &type metadata for ArtistNameParameterBuilder;
  *(v13 + 64) = &off_21428;
  *(v13 + 32) = 257;
  sub_3578(&qword_24D60, &qword_1CE00);
  v14 = swift_allocObject();
  *(v14 + 16) = v36;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v16 = swift_allocObject();
  v16[5] = v0;
  v16[6] = &protocol witness table for SubscriptionProvider;
  v17 = sub_35C0(v16 + 2);
  (*(v1 + 32))(v17, v3, v0);
  *(v14 + 56) = PartyMusicSubscriber;
  *(v14 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber, &protocol conformance descriptor for FirstPartyMusicSubscriber);
  *(v14 + 32) = v16;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v18 = (type metadata accessor for SignalDefinition(0) - 8);
  v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v36;
  v21 = (v20 + v19);
  v22 = v18[7];
  *&v21[v22] = v12;
  v23 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v24 = sub_1B624();
  v25 = *(v24 - 8);
  (*(v25 + 104))(&v21[v22], v23, v24);
  (*(v25 + 56))(&v21[v22], 0, 1, v24);
  v26 = &v21[v18[8]];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *v21 = v29;
  qword_26248 = 0xD00000000000001BLL;
  qword_26250 = v33;
  unk_26258 = 0xD000000000000056;
  qword_26260 = v34;
  unk_26268 = v35;
  qword_26270 = v32;
  unk_26278 = v20;
  qword_26280 = 0x6974724179616C70;
  qword_26288 = 0xEA00000000007473;
  unk_26290 = 0xD000000000000010;
  qword_26298 = v30;
  word_262A0 = 263;
  qword_262A8 = 0xD000000000000011;
  unk_262B0 = v31;
  qword_262B8 = 0;
  unk_262C0 = 0;
  *&algn_262E0[16] = v38;
  qword_262C8 = v12;
  unk_262D0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_262D8 = 0;
  *algn_262E0 = v37;
  qword_26300 = v39;
  unk_26308 = v13;
  qword_26310 = v14;
}

unint64_t sub_1780C()
{
  if (sub_12250(&off_20EE0))
  {
    return sub_11B68() & 1;
  }

  else
  {
    return 0;
  }
}

double sub_1784C()
{
  v0 = sub_1B394();
  v66 = *(v0 - 8);
  v67 = v0;
  __chkstk_darwin(v0);
  v65 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_3578(&qword_24670, &qword_1C100);
  __chkstk_darwin(v2 - 8);
  v4 = (&v49 - v3);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v5 = qword_24460;
  v64 = qword_25C80;

  if (v5 != -1)
  {
    swift_once();
  }

  v62 = 0x800000000001D4D0;
  v63 = 0x800000000001D430;
  v60 = qword_25C88;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v6 = type metadata accessor for SignalDefinition(0);
  v7 = *(v6 - 8);
  *&v69 = *(v7 + 72);
  v8 = v6 - 8;
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v59 = xmmword_1C490;
  v61 = v10;
  *(v10 + 16) = xmmword_1C490;
  v11 = (v10 + v9);

  v57 = sub_DE94(8);
  v56 = sub_3578(&qword_24D48, &qword_1CDF0);
  v71 = sub_1B4D4();
  v12 = *(v71 - 8);
  v13 = *(v12 + 72);
  v70 = *(v12 + 80);
  v14 = (v70 + 32) & ~v70;
  v68 = v14;
  v58 = 2 * v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v59;
  v16 = v15 + v14;
  LODWORD(v59) = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v17 = *(v12 + 104);
  v54 = v17;
  (v17)(v16);
  v55 = enum case for DeliveryVehicle.siriHelp(_:);
  v50 = v13;
  (v17)(v16 + v13);
  *v4 = v15;
  v18 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v53 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v19 = sub_1B624();
  v20 = *(v19 - 8);
  v52 = *(v20 + 104);
  v52(v4, v18, v19);
  v51 = *(v20 + 56);
  v51(v4, 0, 1, v19);
  v21 = *(v8 + 32);
  v49 = v8;
  v22 = (v11 + v21);
  v22[3] = type metadata accessor for PlayRadioAssistantConfigurator(0);
  v22[4] = sub_1B024(&qword_24C70, type metadata accessor for PlayRadioAssistantConfigurator, &unk_1CAD8);
  v23 = sub_35C0(v22);
  *v23 = 0x6964615279616C70;
  v23[1] = 0xE90000000000006FLL;
  v24 = enum case for ActionIdentifier.suggestionId(_:);
  v25 = sub_1B504();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  *v11 = v57;
  sub_1AC78(v4, v11 + *(v8 + 28));
  v26 = (v11 + v69);
  v57 = sub_E06C(8);
  v27 = v68;
  v28 = swift_allocObject();
  v69 = xmmword_1BF10;
  *(v28 + 16) = xmmword_1BF10;
  v29 = v28 + v27;
  v30 = v55;
  v31 = v54;
  v54(v29, v55, v71);
  *v4 = v28;
  v52(v4, v53, v19);
  v51(v4, 0, 1, v19);
  v32 = v49;
  v33 = v26 + *(v49 + 32);
  *(v33 + 4) = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *v26 = v57;
  sub_1AC78(v4, v26 + *(v32 + 28));
  v57 = 0x800000000001D4B0;
  v34 = v58;
  v35 = v50;
  v36 = v68;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C5F0;
  v38 = v37 + v36;
  v39 = v30;
  v40 = v71;
  v31(v38, v39, v71);
  v31(v38 + v35, enum case for DeliveryVehicle.siriAutoComplete(_:), v40);
  v31(v38 + v34, v59, v40);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v73 + 1) = sub_1B444();
  v74 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v72);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v41 = swift_allocObject();
  *(v41 + 16) = v69;
  *(v41 + 56) = &type metadata for RadioNameParameterBuilder;
  *(v41 + 64) = &off_217D8;
  *(v41 + 32) = 258;
  sub_3578(&qword_24D60, &qword_1CE00);
  v42 = swift_allocObject();
  *(v42 + 16) = v69;
  v43 = v65;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v45 = swift_allocObject();
  v46 = v67;
  v45[5] = v67;
  v45[6] = &protocol witness table for SubscriptionProvider;
  v47 = sub_35C0(v45 + 2);
  (*(v66 + 32))(v47, v43, v46);
  *(v42 + 56) = PartyMusicSubscriber;
  *(v42 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber, &protocol conformance descriptor for FirstPartyMusicSubscriber);
  *(v42 + 32) = v45;
  qword_26318 = 0xD00000000000001ALL;
  qword_26320 = v62;
  unk_26328 = 0xD000000000000056;
  qword_26330 = v63;
  unk_26338 = v64;
  qword_26340 = v60;
  unk_26348 = v61;
  qword_26350 = 0x6964615279616C70;
  qword_26358 = 0xE90000000000006FLL;
  unk_26360 = 0xD000000000000010;
  qword_26368 = 0x800000000001D490;
  word_26370 = 264;
  qword_26378 = 0xD000000000000011;
  unk_26380 = v57;
  qword_26388 = 0;
  unk_26390 = 0;
  result = *&v73;
  unk_263C0 = v73;
  qword_26398 = v37;
  unk_263A0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_263A8 = 0;
  unk_263B0 = v72;
  qword_263D0 = v74;
  unk_263D8 = v41;
  qword_263E0 = v42;
  return result;
}

uint64_t sub_18108()
{
  if (sub_12250(&off_20F60) & 1) == 0 || (sub_11B68() & 1) != 0 || (sub_11D0C())
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1215C() ^ 1;
  }

  return v0 & 1;
}

double sub_1815C()
{
  v0 = sub_1B394();
  v68 = *(v0 - 8);
  v69 = v0;
  __chkstk_darwin(v0);
  v67 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_3578(&qword_24670, &qword_1C100);
  __chkstk_darwin(v2 - 8);
  v4 = (&v50 - v3);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v5 = qword_24460;
  v66 = qword_25C80;

  if (v5 != -1)
  {
    swift_once();
  }

  v64 = 0x800000000001D410;
  v65 = 0x800000000001D430;
  v62 = qword_25C88;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v6 = type metadata accessor for SignalDefinition(0);
  v7 = *(v6 - 8);
  v59 = *(v7 + 72);
  v8 = v6 - 8;
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v73 = xmmword_1C490;
  v63 = v10;
  *(v10 + 16) = xmmword_1C490;
  v11 = (v10 + v9);

  *&v58 = sub_DE94(9);
  v57 = sub_3578(&qword_24D48, &qword_1CDF0);
  v72 = sub_1B4D4();
  v12 = *(v72 - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  v15 = (v14 + 32) & ~v14;
  v70 = v15;
  v71 = v14;
  v60 = 2 * v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v73;
  v17 = v16 + v15;
  v61 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v18 = *(v12 + 104);
  v55 = v18;
  (v18)(v17);
  v56 = enum case for DeliveryVehicle.siriHelp(_:);
  v51 = v13;
  (v18)(v17 + v13);
  *v4 = v16;
  v19 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v54 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v20 = sub_1B624();
  v21 = *(v20 - 8);
  v53 = *(v21 + 104);
  v53(v4, v19, v20);
  v52 = *(v21 + 56);
  v52(v4, 0, 1, v20);
  v22 = *(v8 + 32);
  v50 = v8;
  v23 = (v11 + v22);
  v23[3] = type metadata accessor for PlayPlaylistAssistantConfigurator(0);
  v23[4] = sub_1B024(&qword_24AF8, type metadata accessor for PlayPlaylistAssistantConfigurator, &unk_1C820);
  v24 = sub_35C0(v23);
  strcpy(v24, "playPlaylist");
  *(v24 + 13) = 0;
  *(v24 + 7) = -5120;
  v25 = enum case for ActionIdentifier.suggestionId(_:);
  v26 = sub_1B504();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  *v11 = v58;
  sub_1AC78(v4, v11 + *(v8 + 28));
  v27 = (v59 + v11);
  v59 = sub_E06C(9);
  v28 = v70;
  v29 = swift_allocObject();
  v58 = xmmword_1BF10;
  *(v29 + 16) = xmmword_1BF10;
  v30 = v29 + v28;
  v31 = v56;
  v32 = v55;
  v55(v30, v56, v72);
  *v4 = v29;
  v53(v4, v54, v20);
  v52(v4, 0, 1, v20);
  v33 = v50;
  v34 = v27 + *(v50 + 32);
  *(v34 + 4) = 0;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *v27 = v59;
  sub_1AC78(v4, v27 + *(v33 + 28));
  v59 = 0x800000000001D4B0;
  v35 = v60;
  v36 = v51;
  v37 = v70;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C5F0;
  v39 = v38 + v37;
  v40 = v31;
  v41 = v72;
  v32(v39, v40, v72);
  v32(v39 + v36, enum case for DeliveryVehicle.siriAutoComplete(_:), v41);
  v32(v39 + v35, v61, v41);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v75 + 1) = sub_1B444();
  v76 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v74);
  sub_1B434();
  sub_3578(&qword_24D58, &qword_1CDF8);
  v42 = swift_allocObject();
  *(v42 + 16) = v73;
  *(v42 + 56) = &type metadata for PlaylistNameParameterBuilder;
  *(v42 + 64) = &off_21698;
  *(v42 + 32) = 260;
  *(v42 + 96) = &type metadata for PlaylistTypeParameterBuilder;
  *(v42 + 104) = &off_215E8;
  *(v42 + 72) = 5;
  sub_3578(&qword_24D60, &qword_1CE00);
  v43 = swift_allocObject();
  *(v43 + 16) = v58;
  v44 = v67;
  sub_1B384();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v46 = swift_allocObject();
  v47 = v69;
  v46[5] = v69;
  v46[6] = &protocol witness table for SubscriptionProvider;
  v48 = sub_35C0(v46 + 2);
  (*(v68 + 32))(v48, v44, v47);
  *(v43 + 56) = PartyMusicSubscriber;
  *(v43 + 64) = sub_1B024(&qword_24D68, type metadata accessor for FirstPartyMusicSubscriber, &protocol conformance descriptor for FirstPartyMusicSubscriber);
  *(v43 + 32) = v46;
  qword_263E8 = 0xD00000000000001DLL;
  qword_263F0 = v64;
  unk_263F8 = 0xD000000000000056;
  qword_26400 = v65;
  unk_26408 = v66;
  qword_26410 = v62;
  unk_26418 = v63;
  strcpy(&qword_26420, "playPlaylist");
  BYTE5(qword_26428) = 0;
  HIWORD(qword_26428) = -5120;
  unk_26430 = 0xD000000000000010;
  qword_26438 = 0x800000000001D490;
  word_26440 = 265;
  qword_26448 = 0xD000000000000011;
  unk_26450 = v59;
  qword_26458 = 0;
  unk_26460 = 0;
  result = *&v75;
  unk_26490 = v75;
  qword_26468 = v38;
  unk_26470 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26478 = 0;
  unk_26480 = v74;
  qword_264A0 = v76;
  unk_264A8 = v42;
  qword_264B0 = v43;
  return result;
}

uint64_t sub_18A24()
{
  if ((sub_12250(&off_20F90) & 1) != 0 && (sub_11B68() & 1) == 0)
  {
    v0 = sub_11D0C() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_18A70()
{
  v0 = sub_1B4D4();
  v42 = *(v0 - 8);
  v43 = v0;
  __chkstk_darwin(v0);
  v41 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B334();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  if (qword_24458 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = *(qword_25C80 + 16);

    v10 = _swiftEmptyArrayStorage;
    v50 = v8;
    if (!v8)
    {
      break;
    }

    v11 = 0;
    v47 = (v3 + 32);
    v48 = v3 + 16;
    v44 = (v3 + 8);
    v45 = v3;
    v46 = v2;
    v49 = v9;
    while (v11 < *(v9 + 16))
    {
      v53 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v54 = v10;
      v52 = *(v3 + 72);
      (*(v3 + 16))(v7, v9 + v53 + v52 * v11, v2);
      *&v55 = sub_1B324();
      *(&v55 + 1) = v12;
      __chkstk_darwin(v55);
      *(&v41 - 2) = &v55;
      v13 = v2;
      v14 = sub_11C60(sub_1ACE8, (&v41 - 4), &off_20CF8);
      swift_arrayDestroy();

      if (v14)
      {
        (*v44)(v7, v13);
        v10 = v54;
        v2 = v13;
      }

      else
      {
        v15 = *v47;
        (*v47)(v51, v7, v13);
        v10 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A358(0, v10[2] + 1, 1);
          v10 = v58;
        }

        v18 = v10[2];
        v17 = v10[3];
        if (v18 >= v17 >> 1)
        {
          sub_1A358((v17 > 1), v18 + 1, 1);
          v10 = v58;
        }

        v10[2] = v18 + 1;
        v2 = v46;
        v15(v10 + v53 + v18 * v52, v51, v46);
        v3 = v45;
      }

      ++v11;
      v9 = v49;
      if (v50 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:
  v54 = v10;

  if (qword_24460 != -1)
  {
    swift_once();
  }

  v52 = 0x800000000001D5B0;
  v53 = 0x800000000001D430;
  v19 = qword_25C88;
  v20 = enum case for DeliveryVehicle.siriHelp(_:);
  v22 = v41;
  v21 = v42;
  v23 = *(v42 + 104);
  v24 = v43;
  v23(v41, enum case for DeliveryVehicle.siriHelp(_:), v43);

  v25 = sub_D9B8(0xAu, v22);
  v26 = *(v21 + 8);
  v21 += 8;
  v26(v22, v24);
  v51 = 0x800000000001D490;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v27 = *(v21 + 64);
  v28 = (*(v21 + 72) + 32) & ~*(v21 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C490;
  v30 = v29 + v28;
  v23(v30, v20, v24);
  v23((v30 + v27), enum case for DeliveryVehicle.siriAutoComplete(_:), v24);
  sub_47E0(0, &qword_24D50, INPlayMediaIntent_ptr);
  *(&v56 + 1) = sub_1B444();
  v57 = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_35C0(&v55);
  sub_1B434();
  sub_3578(&qword_24D40, &qword_1CDE8);
  v31 = (type metadata accessor for SignalDefinition(0) - 8);
  v32 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1BF10;
  v34 = (v33 + v32);
  v35 = v31[7];
  *&v34[v35] = v29;
  v36 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v37 = sub_1B624();
  v38 = *(v37 - 8);
  (*(v38 + 104))(&v34[v35], v36, v37);
  (*(v38 + 56))(&v34[v35], 0, 1, v37);
  v39 = &v34[v31[8]];
  *(v39 + 4) = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *v34 = v25;
  qword_264B8 = 0xD00000000000001CLL;
  unk_264C0 = v52;
  qword_264C8 = 0xD000000000000056;
  qword_264D0 = v53;
  unk_264D8 = v54;
  qword_264E0 = v19;
  unk_264E8 = v33;
  qword_264F0 = 0x4E65685479616C70;
  qword_264F8 = 0xEB00000000737765;
  unk_26500 = 0xD000000000000010;
  qword_26508 = v51;
  word_26510 = 266;
  xmmword_26518 = 0u;
  unk_26528 = 0u;
  qword_26538 = v29;
  unk_26540 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_26548 = 0;
  unk_26560 = v56;
  unk_26550 = v55;
  qword_26570 = v57;
  qword_26578 = _swiftEmptyArrayStorage;
  unk_26580 = _swiftEmptyArrayStorage;
}

unint64_t sub_191A4()
{
  if (sub_12250(&off_20F20))
  {
    return sub_12068() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191E4()
{
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v0 = qword_24460;
  v19 = qword_25C80;

  if (v0 != -1)
  {
    swift_once();
  }

  v18 = qword_25C88;
  sub_3578(&qword_24D70, &qword_1CE08);
  sub_1B5A4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF10;

  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v2 = sub_1B4D4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BF10;
  v6 = enum case for SiriHintsMode.display(_:);
  v7 = sub_1B414();
  (*(*(v7 - 8) + 104))(v5 + v4, v6, v7);
  (*(v3 + 104))(v5 + v4, enum case for DeliveryVehicle.siriHints(_:), v2);
  qword_26640 = 0;
  *&algn_26620[16] = 0u;
  *algn_26620 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v8 = (type metadata accessor for SignalDefinition(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BF10;
  v11 = (v10 + v9);
  v12 = v8[7];
  *(v10 + v9 + v12) = v5;
  v13 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v14 = sub_1B624();
  v15 = *(v14 - 8);
  (*(v15 + 104))(&v11[v12], v13, v14);
  (*(v15 + 56))(&v11[v12], 0, 1, v14);
  v16 = &v11[v8[8]];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *v11 = _swiftEmptyArrayStorage;
  qword_26588 = 0xD000000000000016;
  unk_26590 = 0x800000000001D590;
  qword_26598 = 0xD000000000000056;
  qword_265A0 = 0x800000000001D430;
  unk_265A8 = v19;
  qword_265B0 = v18;
  unk_265B8 = v10;
  qword_265C0 = 0x6572616873;
  qword_265C8 = 0xE500000000000000;
  unk_265D0 = 0xD000000000000010;
  qword_265D8 = 0x800000000001D490;
  word_265E0 = 267;
  qword_265E8 = 0;
  unk_265F0 = 0;
  qword_265F8 = &off_20D68;
  unk_26600 = v1;
  qword_26608 = v5;
  unk_26610 = variable initialization expression of AudioSuggestionsExecutionParameters.supportsAffinityIntent;
  qword_26618 = 0;
  qword_26648 = _swiftEmptyArrayStorage;
  unk_26650 = _swiftEmptyArrayStorage;
}

uint64_t sub_19664()
{
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v0 = qword_24460;
  v19 = qword_25C80;

  if (v0 != -1)
  {
    swift_once();
  }

  v18 = qword_25C88;
  sub_3578(&qword_24D70, &qword_1CE08);
  sub_1B5A4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BF10;

  sub_1B5C4();
  sub_3578(&qword_24D48, &qword_1CDF0);
  v2 = sub_1B4D4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BF10;
  v6 = enum case for SiriHintsMode.display(_:);
  v7 = sub_1B414();
  (*(*(v7 - 8) + 104))(v5 + v4, v6, v7);
  (*(v3 + 104))(v5 + v4, enum case for DeliveryVehicle.siriHints(_:), v2);
  qword_26710 = 0;
  unk_26700 = 0u;
  unk_266F0 = 0u;
  sub_3578(&qword_24D40, &qword_1CDE8);
  v8 = (type metadata accessor for SignalDefinition(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BF10;
  v11 = (v10 + v9);
  v12 = v8[7];
  *(v10 + v9 + v12) = v5;
  v13 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v14 = sub_1B624();
  v15 = *(v14 - 8);
  (*(v15 + 104))(&v11[v12], v13, v14);
  (*(v15 + 56))(&v11[v12], 0, 1, v14);
  v16 = &v11[v8[8]];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *v11 = _swiftEmptyArrayStorage;
  qword_26658 = 0xD000000000000018;
  unk_26660 = 0x800000000001D570;
  qword_26668 = 0xD000000000000056;
  qword_26670 = 0x800000000001D430;
  unk_26678 = v19;
  qword_26680 = v18;
  unk_26688 = v10;
  qword_26690 = 0x656C6666756873;
  qword_26698 = 0xE700000000000000;
  unk_266A0 = 0xD000000000000010;
  qword_266A8 = 0x800000000001D490;
  word_266B0 = 268;
  qword_266B8 = 0;
  unk_266C0 = 0;
  qword_266C8 = &off_20DA0;
  unk_266D0 = v1;
  qword_266D8 = v5;
  unk_266E0 = sub_19AE8;
  qword_266E8 = 0;
  qword_26718 = _swiftEmptyArrayStorage;
  unk_26720 = _swiftEmptyArrayStorage;
}

uint64_t sub_19AE8(uint64_t a1)
{
  v1 = 0;
  if ((*(a1 + 32) & 1) == 0 && *(a1 + 24) >= 5)
  {
    v2 = *(a1 + 17);
    v3 = v2 == 2;
    v1 = v2 ^ 1;
    if (v3)
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_19B18()
{
  v0 = sub_1B4D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24458 != -1)
  {
    swift_once();
  }

  v4 = qword_24460;
  v30 = qword_25C80;

  if (v4 != -1)
  {
    swift_once();
  }

  v28 = 0x800000000001D530;
  v29 = 0x800000000001D430;
  v27 = qword_25C88;
  v5 = enum case for DeliveryVehicle.siriHelp(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DeliveryVehicle.siriHelp(_:), v0);

  v25 = sub_D9B8(0xDu, v3);
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  v8(v3, v0);
  v26 = 0x800000000001D490;
  sub_3578(&qword_24D48, &qword_1CDF0);
  v9 = *(v7 + 64);
  v10 = (*(v7 + 72) + 32) & ~*(v7 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C490;
  v12 = v11 + v10;
  v6(v12, v5, v0);
  v6((v12 + v9), enum case for DeliveryVehicle.siriAutoComplete(_:), v0);
  v13 = sub_1B424();
  qword_267D8 = v13;
  unk_267E0 = &protocol witness table for SiriSuggestions.IntentType;
  v14 = sub_35C0(qword_267C0);
  *v14 = 0xD000000000000014;
  v14[1] = 0x800000000001D550;
  (*(*(v13 - 8) + 104))();
  sub_3578(&qword_24D40, &qword_1CDE8);
  v15 = (type metadata accessor for SignalDefinition(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BF10;
  v18 = (v17 + v16);
  v19 = v15[7];
  *(v17 + v16 + v19) = v11;
  v20 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v21 = sub_1B624();
  v22 = *(v21 - 8);
  (*(v22 + 104))(&v18[v19], v20, v21);
  (*(v22 + 56))(&v18[v19], 0, 1, v21);
  v23 = &v18[v15[8]];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *v18 = v25;
  qword_26728 = 0xD00000000000001FLL;
  unk_26730 = v28;
  qword_26738 = 0xD000000000000056;
  qword_26740 = v29;
  unk_26748 = v30;
  qword_26750 = v27;
  unk_26758 = v17;
  strcpy(&qword_26760, "whatSongIsThis");
  HIBYTE(qword_26768) = -18;
  unk_26770 = 0xD000000000000010;
  qword_26778 = v26;
  word_26780 = 269;
  xmmword_26788 = 0u;
  unk_26798 = 0u;
  qword_267A8 = v11;
  unk_267B0 = variable initialization expression of ArtistNameParameterBuilder.parameterName;
  qword_267B8 = 0;
  qword_267E8 = _swiftEmptyArrayStorage;
  unk_267F0 = _swiftEmptyArrayStorage;
}

uint64_t sub_19FCC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_19FE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1A020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1A068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSuggestion.ParameterName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSuggestion.ParameterName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A240()
{
  result = qword_24D30;
  if (!qword_24D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D30);
  }

  return result;
}

unint64_t sub_1A294(uint64_t a1, void *a2)
{
  sub_1BA54(28);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_1B914(v5);
  return 0xD00000000000001ALL;
}

void *sub_1A314(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3BC(a1, a2, a3, *v3, &qword_24BD0, &unk_1C9D0, &type metadata accessor for DeviceType);
  *v3 = result;
  return result;
}

void *sub_1A358(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3BC(a1, a2, a3, *v3, &qword_24BD8, &unk_1CE10, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

char *sub_1A39C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A3BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3578(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A598(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&qword_24D38, &unk_1CDD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A6C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&unk_24DB0, &qword_1CEE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1A7B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_3578(&qword_24DA8, &qword_1CEE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A8A8()
{
  sub_3578(&qword_24D38, &unk_1CDD8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CC20;
  if (qword_24470 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25C98, v0 + 32);
  if (qword_24478 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25D68, v0 + 240);
  if (qword_24480 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25E38, v0 + 448);
  if (qword_24488 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25F08, v0 + 656);
  if (qword_24490 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_25FD8, v0 + 864);
  if (qword_24498 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_260A8, v0 + 1072);
  if (qword_244C0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_264B8, v0 + 1280);
  if (qword_244C8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26588, v0 + 1488);
  if (qword_244D0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26658, v0 + 1696);
  if (qword_244D8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26728, v0 + 1904);
  if (qword_244A0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26178, v0 + 2112);
  if (qword_244A8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26248, v0 + 2320);
  if (qword_244B0 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_26318, v0 + 2528);
  if (qword_244B8 != -1)
  {
    swift_once();
  }

  sub_34C0(&qword_263E8, v0 + 2736);
  return v0;
}

uint64_t sub_1AC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_3578(&qword_24670, &qword_1C100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ACE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAB4() & 1;
  }
}

uint64_t sub_1AD40(uint64_t a1)
{
  result = sub_1A8A8();
  v2 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = result + 32;
    while (v3 < *(v2 + 16))
    {
      sub_34C0(v5, v26);
      if (v27 && (sub_3578(&qword_24D80, &qword_1CE20), v6 = swift_allocObject(), *(v6 + 16) = xmmword_1BF10, *(v6 + 32) = a1, , sub_3578(&qword_24D88, &qword_1CE28), sub_1AFC0(), sub_1B024(&qword_24D98, type metadata accessor for INMediaItemType, &unk_1BFB4), v7 = sub_1B974(), , , (v7 & 1) != 0))
      {
        v23 = v30;
        v24 = v31;
        v25 = v32;
        v19 = v26[6];
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v15 = v26[2];
        v16 = v26[3];
        v17 = v26[4];
        v18 = v26[5];
        v13 = v26[0];
        v14 = v26[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        v33 = v4;
        if ((result & 1) == 0)
        {
          result = sub_1A39C(0, v4[2] + 1, 1);
          v4 = v33;
        }

        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          result = sub_1A39C((v8 > 1), v9 + 1, 1);
          v4 = v33;
        }

        v4[2] = v9 + 1;
        v10 = &v4[26 * v9];
        v10[2] = v13;
        v10[5] = v16;
        v10[6] = v17;
        v10[3] = v14;
        v10[4] = v15;
        v10[9] = v20;
        v10[10] = v21;
        v10[7] = v18;
        v10[8] = v19;
        v10[13] = v24;
        v10[14] = v25;
        v10[11] = v22;
        v10[12] = v23;
      }

      else
      {
        result = sub_3524(v26);
      }

      ++v3;
      v5 += 208;
      if (v12 == v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_14:

    return v4;
  }

  return result;
}

unint64_t sub_1AFC0()
{
  result = qword_24D90;
  if (!qword_24D90)
  {
    sub_8120(&qword_24D88, &qword_1CE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24D90);
  }

  return result;
}

uint64_t sub_1B024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B06C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_21040;
  v6._object = a2;
  v4 = sub_1BAA4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1B0B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211B0;
  v6._object = a2;
  v4 = sub_1BAA4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for AudioSuggestion.SuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSuggestion.SuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B258()
{
  result = qword_24DA0;
  if (!qword_24DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24DA0);
  }

  return result;
}