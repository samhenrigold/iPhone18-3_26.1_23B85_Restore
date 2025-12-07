uint64_t Player.InsertCommand.Location.notice.getter@<X0>(void *x8_0@<X8>)
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v4, x8_0);
  return sub_58B738(v4, type metadata accessor for Notice.Variant);
}

uint64_t sub_585870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_585A88, 0, 0);
}

uint64_t sub_585A88()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0, &unk_B182A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 224), &qword_E0EAA0, &unk_B182A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 88);
    sub_58B6D0(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v6);
    *(v0 + 264) = v8;
    if (v7 >= 4)
    {
      return sub_ABAFD0();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v7);
      v9 = *(v0 + 216);
      v10 = *(v0 + 96);
      v11 = sub_AB31C0();
      *(v0 + 272) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v0 + 280) = v13;
      *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v9, 1, 1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF4EC0;
      *(inited + 32) = MusicItem.metricsContentType.getter(v10);
      *(inited + 40) = v15;
      *(inited + 48) = 0;
      *(v0 + 296) = sub_51717C(inited);
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
      *(v0 + 328) = v18;
      swift_setDeallocating();
      sub_54A8C8(inited + 32);
      sub_AB9940();
      *(v0 + 320) = sub_AB9930();
      v20 = sub_AB98B0();

      return _swift_task_switch(sub_585E08, v20, v19);
    }
  }
}

uint64_t sub_585E08()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_15F84(v3, v4, &qword_E0DC30, &unk_B15160);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348, &unk_B17520);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30, &unk_B15160);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_15F84(v7, v75, &qword_E0E348, &unk_B17520);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_512C64(v82, v80);

    sub_513BF8(v21, v19, v20, v18, SBYTE1(v18));
    sub_12E1C(v22, &qword_E0E348, &unk_B17520);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_512C64(v82, v80);

    sub_513BF8(v21, v19, v20, v18, SBYTE1(v18));

    sub_58B738(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_15F84(v25, v26, &qword_E0E348, &unk_B17520);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348, &unk_B17520);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_58B738(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_15F84(v32, v33, &qword_E0E348, &unk_B17520);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    sub_12E1C(*(v0 + 144), &qword_E0E348, &unk_B17520);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_15F84(v39 + v15[6], *(v0 + 200), &qword_E0DC30, &unk_B15160);
    sub_58B738(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_36B0C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_E0DC30, &unk_B15160);
  sub_15F84(v40, v41, &qword_E0E348, &unk_B17520);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348, &unk_B17520);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_58B738(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_15F84(v45, v46, &qword_E0E348, &unk_B17520);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_12E1C(v48, &qword_E0E348, &unk_B17520);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_58B738(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_15F84(v50, v51, &qword_E0E348, &unk_B17520);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_12E1C(*(v0 + 120), &qword_E0E348, &unk_B17520);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_58B738(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_36B0C(v57, v58, &qword_E0E348, &unk_B17520);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_12E1C(v61, &qword_E0E348, &unk_B17520);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_58B738(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_58B6D0(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_53EF4C(v68, v67, v66, v73, SBYTE1(v73));
  sub_58B738(v72, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v71, &qword_E0DC30, &unk_B15160);

  return _swift_task_switch(sub_5865EC, 0, 0);
}

uint64_t sub_5865EC()
{
  sub_58B738(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_53F19C;
}

uint64_t (*sub_586838())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_53F19C;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_53F19C;
}

uint64_t (*sub_586A54())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_53F19C;
}

void sub_586B2C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_586BAC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_AB5520();
}

uint64_t sub_586C2C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v16 = v1;
  v4 = *(v1 - 8);
  v5 = (v3 + *(*(v2 - 1) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64) + v5 + 7;
  v7 = v0 + v3;

  v8 = v2[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v7 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = sub_AB4C10();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v2[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      sub_466B8(v11[2], v12);
    }
  }

  v13 = (v7 + v2[7]);
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  (*(v4 + 8))(v0 + v5, v16);
  v14 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8));
  if (v14 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_586E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_5848E0((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_586F64()
{
  v1 = type metadata accessor for Actions.PlaybackContext(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2 + 7;
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_AB4C10();
      (*(*(v7 - 8) + 8))(v4 + v5, v7);
    }

    else
    {
    }
  }

  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];
    if (v10 >> 60 != 15)
    {
      sub_466B8(v9[2], v10);
    }
  }

  v11 = (v4 + v1[7]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v12 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v8);
  if (v13 >= 4)
  {
  }

  v14 = v0 + v12;
  swift_unknownObjectWeakDestroy();
  v15 = *(v0 + v12 + 48);
  if (v15 != 255)
  {
    sub_17774(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_587168()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_584DE0(v0 + v3, v6, v0 + v5);
}

uint64_t sub_587278()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v17 = v1;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v16 = *(v10 + 24);
      v11 = sub_AB31C0();
      v14 = *(v11 - 8);
      v15 = v11;
      if (!(*(v14 + 48))(v9 + v16, 1))
      {
        (*(v14 + 8))(v9 + v16, v15);
      }
    }

    v1 = v17;
  }

  (*(v4 + 8))(v0 + v5, v1);
  v12 = *(v0 + v6);
  if (v12 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_587554()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_17CF8;

  return sub_585870(v0 + v5, v0 + v6, v7, v3, v2);
}

double sub_5876CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_587910();
  }

  return result;
}

uint64_t sub_587724(uint64_t a1, uint64_t a2)
{
  v2 = sub_AB80A0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_AB80D0();
    __chkstk_darwin();
    v9 = sub_AB86C0();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v3 + 16))(v5, v7, v2);
    sub_AB5520();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_587910()
{
  v62 = sub_AB86C0();
  v59 = *(v62 - 8);
  __chkstk_darwin();
  v58 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_AB8070();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v56 - v6;
  v8 = sub_AB8080();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v56 - v11;
  __chkstk_darwin();
  v13 = &v56 - v12;
  __chkstk_darwin();
  v15 = &v56 - v14;
  v66 = v0;

  sub_AB80B0();

  v16 = *(v9 + 16);
  v64 = v15;
  v60 = v9 + 16;
  v16(v13, v15, v8);
  v65 = v9;
  v17 = (*(v9 + 88))(v13, v8);
  v18 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v65 + 96))(v13, v8);
    (*(v3 + 32))(v7, v13, v2);
    (*(v3 + 104))(v5, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v57 = v7;
    v19 = sub_AB8060();
    v20 = *(v3 + 8);
    v58 = (v3 + 8);
    v59 = v2;
    v20(v5, v2);
    if ((v19 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510(v67), , , , v67[0]))
    {

      v21 = v65;
      v22 = v61;
      (*(v65 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v8);
      __chkstk_darwin();
      v23 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v23;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v22, v8);

      sub_AB5520();
      v24 = *(v21 + 8);
      v24(v22, v8);
      v20(v57, v59);
    }

    else
    {
      v33 = v61;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v34 = v65;
      v56 = v20;
      v35 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v35;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v33, v8);

      sub_AB5520();
      v24 = *(v34 + 8);
      v24(v33, v8);
      v56(v57, v59);
    }

    return (v24)(v64, v8);
  }

  v25 = v17;
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v67);

    if (!v67[0] || (v67[0], swift_getKeyPath(), swift_getKeyPath(), , sub_AB5510(v67), , , , (v67[0] & 1) != 0) || (, v26 = Player.supportsDelegation.getter(), , (v26 & 1) != 0))
    {
      v27 = v61;
      v28 = v64;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v29 = v16;
      v30 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v30;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v29(v63, v27, v8);

      sub_AB5520();
      v31 = *(v65 + 8);
      v31(v27, v8);
      return (v31)(v28, v8);
    }

    v41 = v66;
    v42 = *(*v66 + 120);
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = v41 + v42;
    v46 = v62;
    (*(v59 + 16))(v58, v45, v62);
    sub_AB85F0();
    v48 = v47;
    (*(v43 + 8))(v44, v46);
    if (!v48)
    {
      v53 = v61;
      (*(v3 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v54 = v65;
      (*(v65 + 104))(v53, v18, v8);
      __chkstk_darwin();
      *(&v56 - 2) = v46;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v55;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v53, v8);

      sub_AB5520();
      v24 = *(v54 + 8);
      v24(v53, v8);
      return (v24)(v64, v8);
    }

    v49 = v65;
    v50 = v61;
    (*(v65 + 104))(v61, v25, v8);
    __chkstk_darwin();
    *(&v56 - 2) = v46;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v51;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v16(v63, v50, v8);

    sub_AB5520();
    v52 = *(v49 + 8);
    v52(v50, v8);
    return (v52)(v64, v8);
  }

  else
  {
    v36 = v16;
    v37 = v61;
    v38 = v64;
    v36(v61, v64, v8);
    __chkstk_darwin();
    v39 = v62;
    *(&v56 - 2) = v62;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v39;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v36(v63, v37, v8);

    sub_AB5520();
    v40 = *(v65 + 8);
    v40(v37, v8);
    v40(v38, v8);
    return (v40)(v13, v8);
  }
}

uint64_t sub_588518(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_AB91E0();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v7 = qword_E71B20;
  sub_AB3550();
  v8 = sub_AB9320();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t _s9MusicCore7ActionsO7PreviewO7ContextV13menuItemTitleSSvg_0()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_588950(uint64_t a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_AB91E0();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v7 = qword_E71B20;
  sub_AB3550();
  v8 = sub_AB9320();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void sub_588B50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v10 = v3;
  if (v3 >= 4)
  {
    sub_ABAFD0();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v9 = *(a1 + 8);
    sub_58B910(&v10, v8);
    sub_15F84(&v9, v8, &unk_E12FB0, &qword_B196A0);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = sub_581068;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &unk_B19EB8;
    *(a2 + 112) = 0;
    *(a2 + 120) = &unk_B19EC0;
    *(a2 + 128) = 0;
  }
}

uint64_t sub_588CAC()
{

  return swift_deallocObject();
}

uint64_t sub_588CE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_57B20C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_588E30()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v14 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;

  v7 = v2[5];
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_AB4C10();
      (*(*(v9 - 8) + 8))(v6 + v7, v9);
    }

    else
    {
    }
  }

  v10 = (v6 + v2[6]);
  if (v10[1])
  {

    v11 = v10[3];
    if (v11 >> 60 != 15)
    {
      sub_466B8(v10[2], v11);
    }
  }

  v12 = (v6 + v2[7]);
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  (*(v4 + 8))(v0 + ((v3 + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

uint64_t sub_58905C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_57CFDC((v0 + v3), v4, v1);
}

uint64_t sub_58912C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v11 = v0 + v6;

  v12 = v5[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v6 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_AB4C10();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = v10 + v9;
  v16 = (v11 + v5[6]);
  if (v16[1])
  {

    v17 = v16[3];
    if (v17 >> 60 != 15)
    {
      sub_466B8(v16[2], v17);
    }
  }

  v18 = v15 + 7;
  v19 = (v11 + v5[7]);
  if (v19[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + v9;
  v22 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v22 - 8) + 48))(v0 + v9, 1, v22))
  {
    if (*(v21 + 8) >= 0xDuLL)
    {
    }

    v23 = v21 + *(v22 + 20);
    v24 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_AB31C0();
      v27 = *(v26 - 8);
      v31 = v26;
      if (!(*(v27 + 48))(v23 + v25, 1))
      {
        (*(v27 + 8))(v23 + v25, v31);
      }
    }
  }

  v28 = v0 + v20;
  swift_unknownObjectWeakDestroy();
  v29 = *(v0 + v20 + 48);
  if (v29 != 255)
  {
    sub_17774(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), v29);
  }

  if (*(v28 + 64))
  {
  }

  if (*(v28 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_589588()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_17BD0;

  return sub_57DC2C(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t sub_589760()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_57FD68(v0 + v5, v0 + v6, v2, v3);
}

char *sub_5898A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v72 = a3;
  v80 = a2;
  v81 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E135C0, &qword_B19DB0);
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin();
  v73 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F508, &unk_B22960);
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin();
  v76 = &v58 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510, &qword_B19DB8);
  __chkstk_darwin();
  v79 = &v58 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135B0, &qword_B19DC0);
  v68 = *(v67 - 8);
  __chkstk_darwin();
  v65 = &v58 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13E70, &qword_B19DC8);
  v71 = *(v69 - 8);
  __chkstk_darwin();
  v66 = &v58 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F518, &unk_B22460);
  v63 = *(v70 - 8);
  __chkstk_darwin();
  v62 = &v58 - v12;
  v61 = sub_AB80A0();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v58 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F520, &unk_B22450);
  v17 = *(v59 - 1);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = sub_AB8080();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin();
  v26 = &v58 - v25;
  *(v4 + 4) = _swiftEmptyArrayStorage;
  v64 = v4 + 32;
  v27 = *(*v4 + 128);
  (*(v21 + 104))(&v58 - v25, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v20, v24);
  (*(v21 + 16))(v23, v26, v20);
  sub_AB54D0();
  (*(v21 + 8))(v26, v20);
  (*(v17 + 32))(&v4[v27], v19, v59);
  v28 = *(*v4 + 136);
  v29 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v30 = sub_AB8090();
  (*(*(v30 - 8) + 104))(v16, v29, v30);
  v31 = v60;
  v32 = v61;
  (*(v60 + 104))(v16, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v61);
  v59 = *(v31 + 16);
  v59(v14, v16, v32);
  v33 = v62;
  sub_AB54D0();
  v60 = *(v31 + 8);
  (v60)(v16, v32);
  (*(v63 + 32))(&v4[v28], v33, v70);
  v34 = *(*v4 + 120);
  v35 = sub_AB86C0();
  v70 = *(v35 - 8);
  (*(v70 + 16))(&v4[v34], v81, v35);
  v36 = v72;
  *(v4 + 2) = v80;
  *(v4 + 3) = v36;

  sub_587910();
  sub_AB80D0();
  v84 = v35;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v72 = v35;
  v82 = v35;
  v83 = &protocol witness table for Song;
  swift_getKeyPath();
  v59(v14, v16, v32);

  sub_AB5520();
  (v60)(v16, v32);
  v37 = v65;
  sub_AB80C0();
  sub_58B7D4();
  v38 = sub_ABA150();
  v86 = v38;
  v39 = sub_ABA130();
  v40 = *(v39 - 8);
  v41 = v79;
  v63 = *(v40 + 56);
  v62 = (v40 + 56);
  (v63)(v79, 1, 1, v39);
  sub_36A00(&qword_E0F528, &unk_E135B0, &qword_B19DC0, &protocol conformance descriptor for Published<A>.Publisher);
  v42 = sub_58B820(&qword_E13540, sub_58B7D4, &protocol conformance descriptor for OS_dispatch_queue);
  v43 = v66;
  v44 = v41;
  v45 = v67;
  v61 = v42;
  sub_AB5590();
  sub_12E1C(v44, &qword_E0F510, &qword_B19DB8);

  (*(v68 + 8))(v37, v45);
  swift_allocObject();
  swift_weakInit();
  sub_36A00(&unk_E13E80, &unk_E13E70, &qword_B19DC8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v46 = v69;
  sub_AB55C0();

  v47 = v64;
  (*(v71 + 8))(v43, v46);
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  v48 = v73;
  v49 = v80;
  sub_AB80E0();
  v50 = sub_ABA150();
  v86 = v50;
  v51 = v79;
  (v63)(v79, 1, 1, v39);
  sub_36A00(&qword_E0F530, &qword_E135C0, &qword_B19DB0, &protocol conformance descriptor for Published<A>.Publisher);
  v52 = v75;
  v53 = v76;
  sub_AB5590();
  sub_12E1C(v51, &qword_E0F510, &qword_B19DB8);

  (*(v74 + 8))(v48, v52);
  v54 = swift_allocObject();
  swift_weakInit();

  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v49;
  sub_36A00(qword_E13E90, &qword_E0F508, &unk_B22960, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v56 = v78;
  sub_AB55C0();

  (*(v77 + 8))(v53, v56);
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v4 + 4) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v4 + 4) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  (*(v70 + 8))(v81, v72);
  return v4;
}

double sub_58A584@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = a1[6];
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_578FA4;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_B19CE0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_B19CE8;
  *(a2 + 112) = 0;

  return result;
}

uint64_t sub_58A63C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440, &qword_B19B30) - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v21 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v3;

  v10 = v2[5];
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v11 - 8) + 48))(v9 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = sub_AB4C10();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
    }
  }

  v13 = (v9 + v2[6]);
  if (v13[1])
  {

    v14 = v13[3];
    if (v14 >> 60 != 15)
    {
      sub_466B8(v13[2], v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = (v9 + v2[7]);
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  v17 = sub_AB8080();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v15, 1, v17))
  {
    (*(v18 + 8))(v0 + v15, v17);
  }

  (*(v7 + 8))(v0 + ((v15 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

unint64_t sub_58A95C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440, &qword_B19B30) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 1) + 80)) & ~*(*(v1 - 1) + 80);
  v9 = *(v0 + ((*(*(v1 - 1) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_581A20(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_58AAC8()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440, &qword_B19B30) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Actions.PlaybackContext(0);
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = sub_AB8080();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  (*(v4 + 8))(v0 + v5, v1);
  v11 = v0 + v8;

  v12 = v7[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v8 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = sub_AB4C10();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = (v11 + v7[6]);
  if (v15[1])
  {

    v16 = v15[3];
    if (v16 >> 60 != 15)
    {
      sub_466B8(v15[2], v16);
    }
  }

  v17 = (v11 + v7[7]);
  if (v17[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  return swift_deallocObject();
}

uint64_t sub_58ADDC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F440, &qword_B19B30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_17CF8;

  return sub_582C38(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_58AFB8()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_AB31C0();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_58B284()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_17CF8;

  return sub_583C00(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC13InsertCommandV8LocationO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_58B4A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_58B4F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_58B550()
{

  return swift_deallocObject();
}

uint64_t sub_58B588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_58B5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E130E0, &qword_B21BC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_58B660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA98, &unk_B239F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_58B6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_58B738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_58B7B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_58B7D4()
{
  result = qword_E103C0;
  if (!qword_E103C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E103C0);
  }

  return result;
}

uint64_t sub_58B820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_58B868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_58B8A8()
{

  return swift_deallocObject();
}

void sub_58B900(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_58B9F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_5A4E14(a3, a1, a2);
  sub_AB9C60();
  sub_AB9CA0();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = sub_AB9D80();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  sub_C8C3C(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_53842C;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_B19ED0;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_B19ED8;
  *(a2 + 120) = 0;
  return result;
}

double sub_58BD34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_53842C;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_B19ED0;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_B19ED8;
  *(a2 + 120) = 0;

  return result;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000000B6B230;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000000B6B230;
  return sub_53EAA8;
}

uint64_t sub_58BEA0()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000000B6B250;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000000B6B250;
  return sub_53F19C;
}

uint64_t (*sub_58BF78())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000000B6B230;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000000B6B230;
  return sub_53F19C;
}

uint64_t (*sub_58C018())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000000B6B250;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000000B6B250;
  return sub_53F19C;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v42 = a6;
  v34 = a5;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  sub_AB35C0();
  __chkstk_darwin();
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB9250();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin();
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v31 - v14;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin();
  v18 = &v31 - v17;
  sub_E8BA0(a1, v44);
  v19 = swift_allocObject();
  sub_70DF8(v44, v19 + 16);
  *(v19 + 56) = a2;
  *(v19 + 64) = a3;
  v20 = swift_allocObject();
  v21 = v34;
  v35 = v20;
  *(v20 + 16) = v37;
  *(v20 + 24) = v21;
  sub_15F84(v42, v18, &qword_E0EAA0, &unk_B182A0);
  v37 = a1;
  sub_E8BA0(a1, v43);
  v22 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_36B0C(v18, v24 + v22, &qword_E0EAA0, &unk_B182A0);
  sub_70DF8(v43, v24 + v23);

  sub_AB91E0();
  (*(v40 + 16))();
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v25 = qword_E71B20;
  sub_AB3550();
  v26 = sub_AB9320();
  v28 = v27;

  sub_12E1C(v42, &qword_E0EAA0, &unk_B182A0);
  __swift_destroy_boxed_opaque_existential_0(v37);
  result = (*(v40 + 8))(v15, v41);
  *a7 = sub_58C9A8;
  a7[1] = v19;
  v30 = v35;
  a7[2] = &unk_B19EF0;
  a7[3] = v30;
  a7[4] = &unk_B19F00;
  a7[5] = v24;
  a7[6] = v26;
  a7[7] = v28;
  return result;
}

unint64_t sub_58C4B0(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = sub_AB8130();
  v24 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F838, &qword_B1A8C0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - v11;
  sub_E8BA0(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F840, &qword_B1A8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F848, &qword_B1A8D0);
  if (swift_dynamicCast())
  {
    sub_70DF8(v36, v39);
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    sub_AB4020();
    sub_AB82C0();
    (*(v24 + 8))(v8, v6);
    v13 = sub_58C9B4();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0(v39);
    return v13;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 0;
  sub_12E1C(v36, &qword_E0F850, &qword_B1A8D8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v27);

  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[7] = v34;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  sub_70C54(v35);
  if ((BYTE1(v35[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(v15, v16);
  v17 = sub_AB31C0();
  v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
  sub_12E1C(v5, &qword_E0DC30, &unk_B15160);
  if (v18 != 1)
  {
    return 0;
  }

  sub_E8BA0(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E368, &unk_B17540);
  if (swift_dynamicCast())
  {
    v19 = *(&v28 + 1);
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    (*(v20 + 8))(v19, v20);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0(&v27);
    if (v22)
    {

      return 0;
    }
  }

  else
  {
    *&v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_12E1C(&v27, &unk_E13D70, &qword_B196D0);
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_58C960()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_58C9B4()
{
  v1 = sub_AB8120();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v22 - v4;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F838, &qword_B1A8C0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = *(v8 + 16);
  v24 = v0;
  v14(&v22 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v25;
    v16(v25, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v19 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v6, v1);
      return v19;
    }

    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_ABAD90(17);

        v26 = 0x206E776F6E6B6E55;
        v27 = 0xEF206E6F73616572;
        v16(v23, v6, v1);
        v29._countAndFlagsBits = sub_AB9350();
        sub_AB94A0(v29);

        v19 = v26;
        v21 = *(v2 + 8);
        v21(v6, v1);
        v21(v25, v1);
        return v19;
      }

      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v6, v1);
  }

  else if (v15 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_ABAD90(27);

    v26 = 0xD000000000000019;
    v27 = 0x8000000000B6B4A0;
    (v14)(v10, v24, v7);
    v28._countAndFlagsBits = sub_AB9350();
    sub_AB94A0(v28);

    v19 = v26;
    (*(v8 + 8))(v13, v7);
    return v19;
  }

  return 0;
}

uint64_t sub_58CE58(int *a1)
{
  v1[2] = sub_AB9940();
  v1[3] = sub_AB9930();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_51E844;

  return v5();
}

uint64_t sub_58CF68()
{

  return swift_deallocObject();
}

uint64_t sub_58CFA0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58CE58(v2);
}

uint64_t sub_58D038(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_58D248, 0, 0);
}

uint64_t sub_58D248()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0, &unk_B182A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 200), &qword_E0EAA0, &unk_B182A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_53EEE4(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_AB31C0();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    v14 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_51717C(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 296) = sub_AB9930();
    v20 = sub_AB98B0();

    return _swift_task_switch(sub_58D560, v20, v19);
  }
}

uint64_t sub_58D560()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_15F84(v3, v4, &qword_E0DC30, &unk_B15160);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348, &unk_B17520);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12293;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30, &unk_B15160);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348, &unk_B17520);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348, &unk_B17520);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_548758(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348, &unk_B17520);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348, &unk_B17520);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348, &unk_B17520);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_12E1C(*(v0 + 120), &qword_E0E348, &unk_B17520);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_15F84(v36 + v14[6], *(v0 + 176), &qword_E0DC30, &unk_B15160);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_36B0C(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_E0DC30, &unk_B15160);
  sub_15F84(v37, v38, &qword_E0E348, &unk_B17520);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348, &unk_B17520);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348, &unk_B17520);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348, &unk_B17520);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_548758(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348, &unk_B17520);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 96), &qword_E0E348, &unk_B17520);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_548758(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348, &unk_B17520);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348, &unk_B17520);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_548758(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30, &unk_B15160);

  return _swift_task_switch(sub_5A4E70, 0, 0);
}

uint64_t sub_58DD18()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17CF8;

  return sub_58D038(v0 + v3, v0 + v4);
}

double static Actions.ShareLyrics.action(context:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B19F08;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B19F10;
  *(a2 + 104) = 0;

  return result;
}

double sub_58DECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B19F08;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B19F10;
  *(a2 + 104) = 0;

  return result;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_36B0C(a6, v17 + v15, &qword_E0EAA0, &unk_B182A0);
  result = sub_70DF8(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &unk_B19F20;
  a7[5] = v17;
  return result;
}

uint64_t sub_58E0A8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_58E2B8, 0, 0);
}

uint64_t sub_58E2B8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0, &unk_B182A0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 200), &qword_E0EAA0, &unk_B182A0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_53EEE4(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = sub_AB31C0();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    v14 = v7[3];
    __swift_project_boxed_opaque_existential_1(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_51717C(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 296) = sub_AB9930();
    v20 = sub_AB98B0();

    return _swift_task_switch(sub_58E5D0, v20, v19);
  }
}

uint64_t sub_58E5D0()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_15F84(v3, v4, &qword_E0DC30, &unk_B15160);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348, &unk_B17520);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12805;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30, &unk_B15160);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348, &unk_B17520);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348, &unk_B17520);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_548758(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348, &unk_B17520);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348, &unk_B17520);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348, &unk_B17520);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_12E1C(*(v0 + 120), &qword_E0E348, &unk_B17520);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_15F84(v36 + v14[6], *(v0 + 176), &qword_E0DC30, &unk_B15160);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_36B0C(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_E0DC30, &unk_B15160);
  sub_15F84(v37, v38, &qword_E0E348, &unk_B17520);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348, &unk_B17520);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348, &unk_B17520);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348, &unk_B17520);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_548758(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348, &unk_B17520);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 96), &qword_E0E348, &unk_B17520);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_548758(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348, &unk_B17520);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348, &unk_B17520);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_548758(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30, &unk_B15160);

  return _swift_task_switch(sub_58ED84, 0, 0);
}

uint64_t sub_58ED84()
{
  sub_548758(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = sub_AB31C0();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_58F118()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17BD0;

  return sub_58E0A8(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

id sub_58F43C()
{
  v0 = sub_AB9260();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_58F6AC, 0, 0);
}

uint64_t sub_58F6AC()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_58F720(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_58F7BC, 0, 0);
}

uint64_t sub_58F7BC()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v7 = 0;
  if (v5 != 1)
  {
    v8 = *(v0 + 24);
    sub_AB30F0(v6);
    v7 = v9;
    (*(v4 + 8))(v8, v3);
  }

  [v2 setOriginalURL:v7];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_58F914(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58F9B0, 0, 0);
}

uint64_t sub_58F9B0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8A70();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_58FAD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58FB74, 0, 0);
}

uint64_t sub_58FB74()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB4530();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_58FC9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58FD38, 0, 0);
}

uint64_t sub_58FD38()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8780();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_58FE60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_58FEFC, 0, 0);
}

uint64_t sub_58FEFC()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8E30();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_590024(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5900C0, 0, 0);
}

uint64_t sub_5900C0()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB8520();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_5901E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_590284, 0, 0);
}

uint64_t sub_590284()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  sub_AB4570();
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    sub_AB30F0(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ShareableMusicItem.augmentMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_59044C, 0, 0);
}

uint64_t sub_59044C()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_590564;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

uint64_t sub_590564()
{

  return _swift_task_switch(sub_590660, 0, 0);
}

uint64_t sub_590660()
{
  v1 = *(v0 + 48);
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_AB30F0(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 56) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t Album.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8, &qword_B19930);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98, &qword_B187E0);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F550, &qword_B19F48);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F558, &qword_B19F50);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_590B70, 0, 0);
}

uint64_t sub_590B70()
{
  v1 = v0[16];
  sub_AB8740();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB8710();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB8770();
      sub_5A4D8C(&qword_E0ED10, &type metadata accessor for Album, &protocol conformance descriptor for Album);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_590E10;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_590E10()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_591170;
  }

  else
  {

    v2 = sub_590F2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_590F2C()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F3E8, &qword_B19930, &qword_E0F830, &type metadata accessor for Album, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0EC98, &qword_B187E0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8740();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_591170()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t Album.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_AB44D0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_AB44F0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F3E8, &qword_B19930);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98, &qword_B187E0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F550, &qword_B19F48);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F558, &qword_B19F50);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_591744, 0, 0);
}

uint64_t sub_591744(uint64_t a1)
{
  v2 = sub_AB8710();
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = **(v1 + 32);
    *(v1 + 216) = v6;
    v7 = [v6 specialization];
    *(v1 + 224) = v7;
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      *(v1 + 232) = v9;
      if (v9)
      {
        swift_getKeyPath();
        *(v1 + 16) = v4;
        *(v1 + 24) = v5;
        *(v1 + 240) = sub_AB8770();
        sub_5A4D8C(&qword_E0ED10, &type metadata accessor for Album, &protocol conformance descriptor for Album);

        sub_AB7F00();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_AF82B0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ED08, &qword_B18890);
        *(v10 + 32) = sub_AB7D20();
        sub_AB7EF0();
        v11 = swift_task_alloc();
        *(v1 + 248) = v11;
        *v11 = v1;
        v11[1] = sub_5919F4;
        v12 = *(v1 + 168);
        v13 = *(v1 + 176);

        return MusicCatalogResourceRequest.response()(v12, v13);
      }
    }
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_5919F4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_592074;
  }

  else
  {

    v2 = sub_591B10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_591B10()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_AB7F30();
  sub_58B9F8(&qword_E0F3E8, &qword_B19930, &qword_E0F830, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  sub_15F84(v2, v3, &qword_E0EC98, &qword_B187E0);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    sub_12E1C(*(v0 + 136), &qword_E0EC98, &qword_B187E0);
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    sub_AB8740();
    (*(v7 + 8))(v13, v12);
    v15 = sub_AB31C0();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      sub_AB30F0(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  sub_15F84(v21, v22, &qword_E0EC98, &qword_B187E0);
  if (v8(v22, 1, v20) == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0EC98, &qword_B187E0);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = sub_AB8700();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        sub_503918(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v30;
        v56 = v0;
        v52 = (v28 - 8);
        v53 = (v29 + 8);
        do
        {
          v32 = *(v0 + 88);
          v33 = *(v0 + 64);
          v34 = *(v0 + 72);
          v35 = *(v0 + 48);
          v55(v32, v31, v34);
          sub_AB44E0();
          v36 = sub_AB44C0();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_503918((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v54;
          --v27;
          v0 = v56;
        }

        while (v27);
      }

      isa = sub_AB9740().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  [*(v0 + 232) setOffers:isa];

  sub_12E1C(v49, &qword_E0EC98, &qword_B187E0);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_592074()
{
  v22 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);
    v19 = *(v0 + 176);
    v20 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_592370(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Album.shareURL.getter(a1);
}

uint64_t sub_592420(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F568, &qword_B19FA8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570, &qword_B19FB0);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F578, &qword_B19FB8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F580, &qword_B19FC0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5928A4, 0, 0);
}

uint64_t sub_5928A4()
{
  v1 = v0[16];
  sub_AB88D0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB88C0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB88F0();
      sub_5A4D8C(&qword_E0F588, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_592B44;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_592B44()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_592EA4;
  }

  else
  {

    v2 = sub_592C60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_592C60()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F568, &qword_B19FA8, &qword_E0F828, &type metadata accessor for Artist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F570, &qword_B19FB0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB88D0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_592EA4()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_593188(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Artist.shareURL.getter(a1);
}

uint64_t sub_593238(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5932D4, 0, 0);
}

uint64_t sub_5932D4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

uint64_t sub_593374()
{

  return _swift_task_switch(sub_5A4E90, 0, 0);
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB31C0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Composer.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_5936E0()
{
  v1 = *(v0 + 16);
  v2 = sub_AB31C0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_593794(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58F720(a1);
}

uint64_t Curator.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_593A24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593A44, 0, 0);
}

uint64_t sub_593A44()
{
  sub_AB8A70();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_593ABC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58F914(a1);
}

uint64_t sub_593B6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593B8C, 0, 0);
}

uint64_t sub_593B8C()
{
  sub_AB4530();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_593C04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58FAD8(a1);
}

uint64_t Genre.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_593E94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_593EB4, 0, 0);
}

uint64_t sub_593EB4()
{
  sub_AB8780();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_593F2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58FC9C(a1);
}

uint64_t MusicMovie.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F590, &qword_B19FF8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F598, &qword_B1A000);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5A0, &qword_B1A008);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5A8, &qword_B1A010);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5943C4, 0, 0);
}

uint64_t sub_5943C4()
{
  v1 = v0[16];
  sub_AB4480();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB44A0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB44B0();
      sub_5A4D8C(&qword_E0F5B0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      sub_5A4D8C(&qword_E0F5B8, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_594698;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_594698()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_5949F8;
  }

  else
  {

    v2 = sub_5947B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5947B4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F590, &qword_B19FF8, &qword_E0F820, &type metadata accessor for MusicMovie, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F598, &qword_B1A000);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB4480();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_5949F8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_594CDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t sub_594D8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_594E28, 0, 0);
}

uint64_t sub_594E28()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5C0, &qword_B1A048);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECD8, &qword_B1A050);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5C8, &qword_B1A058);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5D0, &qword_B1A060);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5950D8, 0, 0);
}

uint64_t sub_5950D8()
{
  v1 = v0[16];
  sub_AB8000();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB7FE0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB8030();
      sub_5A4D8C(&qword_E0F5D8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_595378;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_595378()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_5956D8;
  }

  else
  {

    v2 = sub_595494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_595494()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F5C0, &qword_B1A048, &qword_E0F818, &type metadata accessor for MusicVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0ECD8, &qword_B1A050);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8000();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_5956D8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_5959D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t sub_595A6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_595B08, 0, 0);
}

uint64_t sub_595B08()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5E0, &qword_B1A098);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5E8, &qword_B1A0A8);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F5F0, &qword_B1A0B0);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_595FA4, 0, 0);
}

uint64_t sub_595FA4()
{
  v1 = v0[17];
  sub_AB8D20();
  v2 = sub_AB31C0();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[17], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB8CE0();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = sub_AB8E20();
      sub_5A4D8C(&qword_E0F5F8, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = sub_5962B8;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = sub_596624;
      v14 = v0[9];

      return Playlist.publish()(v14);
    }
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[17], v2);
    (*(v3 + 56))(v11, 0, 1, v2);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_5962B8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_5968A0;
  }

  else
  {

    v2 = sub_5963D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5963D4()
{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F5E0, &qword_B1A098, &qword_E0F810, &type metadata accessor for Playlist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E10B00, &qword_B1A0A0);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[22];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];
    sub_AB8D20();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_596624()
{

  return _swift_task_switch(sub_596720, 0, 0);
}

uint64_t sub_596720()
{
  v1 = v0[9];
  v2 = sub_AB8E20();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    sub_12E1C(v1, &qword_E10B00, &qword_B1A0A0);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    sub_AB8D20();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_5968A0()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[15];
    v18 = v0[14];
    v19 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[19] + 56))(v0[4], 1, 1, v0[18]);

  v15 = v0[1];

  return v15();
}

uint64_t Playlist.publish()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_AB8E20();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F600, &qword_B1A0E8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F608, &qword_B1A0F0);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F610, &qword_B1A0F8);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B30, &unk_B1A100);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_596DBC, 0, 0);
}

uint64_t sub_596DBC()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = sub_AB8A90();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_AB4340();
  sub_12E1C(v1, &qword_E0F610, &qword_B1A0F8);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  sub_AB4330();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_596F38;
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

uint64_t sub_596F38()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_59716C;
  }

  else
  {
    v2 = sub_59704C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59704C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_AB4380();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_59716C()
{
  v30 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, qword_E0F538);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v8)
  {
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136446466;
    sub_5A4D8C(&qword_E10A80, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v27 = v12;
    v28 = v10;
    v17 = sub_ABB330();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_500C84(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v21 = sub_AB9350();
    v23 = sub_500C84(v21, v22, &v29);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_0, v6, v26, "Failed to make playlist=%{public}s public with error=%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v28, v27);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  (*(v0[6] + 56))(v0[3], 1, 1, v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_5974B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Playlist.shareURL.getter(a1);
}

uint64_t sub_597564(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_597600, 0, 0);
}

uint64_t sub_597600()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t sub_5976AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_5976CC, 0, 0);
}

uint64_t sub_5976CC()
{
  sub_AB8E30();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_59772C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_58FE60(a1);
}

uint64_t RecordLabel.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_5979BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_5979DC, 0, 0);
}

uint64_t sub_5979DC()
{
  sub_AB8520();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_597A54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_590024(a1);
}

uint64_t SocialProfile.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_597CE4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_597D04, 0, 0);
}

uint64_t sub_597D04()
{
  sub_AB4570();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_597D7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_5901E8(a1);
}

uint64_t Song.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F618, &qword_B1A118);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECE0, &qword_B1A120);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F620, &qword_B1A128);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F628, &qword_B1A130);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_598214, 0, 0);
}

uint64_t sub_598214()
{
  v1 = v0[16];
  sub_AB8670();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB85F0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB86C0();
      sub_5A4D8C(&qword_E0F630, &type metadata accessor for Song, &protocol conformance descriptor for Song);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_5984B4;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_5984B4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_598814;
  }

  else
  {

    v2 = sub_5985D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5985D0()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F618, &qword_B1A118, &qword_E0F808, &type metadata accessor for Song, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0ECE0, &qword_B1A120);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8670();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_598814()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_598B0C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_AB8570();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_AB44D0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_AB44F0();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F618, &qword_B1A118);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECE0, &qword_B1A120);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F620, &qword_B1A128);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F628, &qword_B1A130);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_598EB4, 0, 0);
}

uint64_t sub_598EB4(uint64_t a1)
{
  v2 = sub_AB85F0();
  *(v1 + 240) = v2;
  *(v1 + 248) = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = **(v1 + 32);
    *(v1 + 256) = v6;
    v7 = [v6 specialization];
    *(v1 + 264) = v7;
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      *(v1 + 272) = v9;
      if (v9)
      {
        swift_getKeyPath();
        *(v1 + 16) = v4;
        *(v1 + 24) = v5;
        *(v1 + 280) = sub_AB86C0();
        sub_5A4D8C(&qword_E0F630, &type metadata accessor for Song, &protocol conformance descriptor for Song);

        sub_AB7F00();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_AF82B0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F638, &qword_B1A168);
        *(v10 + 32) = sub_AB7D10();
        sub_AB7EF0();
        v11 = swift_task_alloc();
        *(v1 + 288) = v11;
        *v11 = v1;
        v11[1] = sub_599198;
        v12 = *(v1 + 208);
        v13 = *(v1 + 216);

        return MusicCatalogResourceRequest.response()(v12, v13);
      }
    }
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_599198()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_599A44;
  }

  else
  {

    v2 = sub_5992B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5992B4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  sub_AB7F30();
  sub_58B9F8(&qword_E0F618, &qword_B1A118, &qword_E0F808, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  sub_15F84(v2, v3, &qword_E0ECE0, &qword_B1A120);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    sub_12E1C(*(v0 + 176), &qword_E0ECE0, &qword_B1A120);
    v10 = sub_AB31C0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    sub_AB8670();
    (*(v7 + 8))(v13, v12);
    v15 = sub_AB31C0();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      sub_AB30F0(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  sub_15F84(v21, v22, &qword_E0ECE0, &qword_B1A120);
  if (v8(v22, 1, v20) == 1)
  {
    sub_12E1C(*(v0 + 168), &qword_E0ECE0, &qword_B1A120);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = sub_AB85E0();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v71 = v8;
        v72 = v7;
        v28 = *(v0 + 104);
        v29 = *(v0 + 80);
        sub_503918(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v70 = v26;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v75 = *(v28 + 56);
        v76 = v30;
        v77 = v0;
        v73 = (v28 - 8);
        v74 = (v29 + 8);
        do
        {
          v32 = *(v0 + 112);
          v33 = *(v0 + 88);
          v34 = *(v0 + 96);
          v35 = *(v0 + 72);
          v76(v32, v31, v34);
          sub_AB44E0();
          v36 = sub_AB44C0();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_503918((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v75;
          --v27;
          v0 = v77;
        }

        while (v27);

        v7 = v72;
        v8 = v71;
      }

      else
      {
      }

      isa = sub_AB9740().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  [*(v0 + 272) setOffers:{isa, v70}];

  sub_15F84(v43, v44, &qword_E0ECE0, &qword_B1A120);
  if (v8(v44, 1, v42) == 1)
  {
    sub_12E1C(*(v0 + 160), &qword_E0ECE0, &qword_B1A120);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = sub_AB31C0();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = sub_AB8640();
  (*(v7 + 8))(v46, v45);
  if (!v47)
  {
    goto LABEL_24;
  }

  if (!*(v47 + 16))
  {

    goto LABEL_24;
  }

  v48 = *(v0 + 120);
  v50 = *(v0 + 56);
  v49 = *(v0 + 64);
  v51 = *(v0 + 48);
  (*(v50 + 16))(v49, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);

  sub_AB8560();
  (*(v50 + 8))(v49, v51);
  v52 = sub_AB31C0();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    sub_AB30F0(v54);
    v55 = v57;
    (*(v53 + 8))(v56, v52);
  }

LABEL_25:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 184);
  [*(v0 + 272) setPreviewURL:v55];

  sub_12E1C(v67, &qword_E0ECE0, &qword_B1A120);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_599A44()
{
  v22 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 224);
    v19 = *(v0 + 216);
    v20 = *(v0 + 232);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_599D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Song.shareURL.getter(a1);
}

uint64_t sub_599E18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F640, &qword_B1A178);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FC0, &qword_B1A180);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F648, &qword_B1A188);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F650, &qword_B1A190);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59A2A0, 0, 0);
}

uint64_t sub_59A2A0()
{
  v1 = v0[16];
  sub_AB8AC0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = sub_AB8AE0();
    sub_5A4D8C(&qword_E0F658, &type metadata accessor for Station, &protocol conformance descriptor for Station);

    sub_AB7F00();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_59A524;
    v8 = v0[12];
    v9 = v0[13];

    return MusicCatalogResourceRequest.response()(v8, v9);
  }

  else
  {
    v10 = v0[4];
    (*(v3 + 32))(v10, v0[16], v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_59A524()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59A884;
  }

  else
  {

    v2 = sub_59A640;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59A640()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F640, &qword_B1A178, &qword_E0F800, &type metadata accessor for Station, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &unk_E12FC0, &qword_B1A180);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB8AC0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59A884()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59AB68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Station.shareURL.getter(a1);
}

uint64_t sub_59AC18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59ACB4, 0, 0);
}

uint64_t sub_59ACB4()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = sub_AB8860();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for Track.song(_:) || v12 == enum case for Track.musicVideo(_:))
  {
    (*(v8 + 8))(v11, v7);
    sub_AB91E0();
    (*(v2 + 16))(v4, v6, v1);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v13 = qword_E71B20;
    sub_AB3550();
    v14 = sub_AB9320();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v14 = Track.failureMessage.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t Track.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_AB86C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_AB8030();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_AB8860();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_59B214, 0, 0);
}

uint64_t sub_59B214()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Track.song(_:))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v0[11] + 96))(v5, v0[10]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_59B650;
    v10 = v0[2];

    return Song.shareURL.getter(v10);
  }

  else if (v4 == enum case for Track.musicVideo(_:))
  {
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 96))(v12, v0[10]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_59B4BC;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = sub_AB31C0();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_59B4BC()
{

  return _swift_task_switch(sub_59B5B8, 0, 0);
}

uint64_t sub_59B5B8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_59B650()
{

  return _swift_task_switch(sub_59B74C, 0, 0);
}

uint64_t sub_59B74C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_59B7EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return Track.shareURL.getter(a1);
}

uint64_t sub_59B888(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59B924, 0, 0);
}

uint64_t sub_59B924()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F660, &qword_B1A1D0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F668, &qword_B1A1D8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F670, &qword_B1A1E0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F678, &qword_B1A1E8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59BDB4, 0, 0);
}

uint64_t sub_59BDB4()
{
  v1 = v0[16];
  sub_AB4740();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB4760();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB4770();
      sub_5A4D8C(&qword_E0F680, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      sub_5A4D8C(&qword_E0F688, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59C088;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59C088()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59C3E8;
  }

  else
  {

    v2 = sub_59C1A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59C1A4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F660, &qword_B1A1D0, &qword_E0F7F8, &type metadata accessor for TVEpisode, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F668, &qword_B1A1D8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB4740();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59C3E8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59C6CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t sub_59C77C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59C818, 0, 0);
}

uint64_t sub_59C818()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F690, &qword_B1A220);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698, &qword_B1A228);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6A0, &qword_B1A230);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6A8, &qword_B1A238);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59CCA8, 0, 0);
}

uint64_t sub_59CCA8()
{
  v1 = v0[16];
  sub_AB46E0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB4700();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB4710();
      sub_5A4D8C(&qword_E0F6B0, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      sub_5A4D8C(&qword_E0F6B8, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59CF7C;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59CF7C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59D2DC;
  }

  else
  {

    v2 = sub_59D098;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59D098()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F690, &qword_B1A220, &qword_E0F7F0, &type metadata accessor for TVSeason, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F698, &qword_B1A228);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB46E0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59D2DC()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59D5C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return TVSeason.shareURL.getter(a1);
}

uint64_t sub_59D670(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59D70C, 0, 0);
}

uint64_t sub_59D70C()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t sub_59D7B4()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C0, &unk_B1A270);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8, &unk_B1F480);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6D0, &qword_B1A280);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6D8, &qword_B1A288);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59DBA0, 0, 0);
}

uint64_t sub_59DBA0()
{
  v1 = v0[16];
  sub_AB4680();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB46A0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB46B0();
      sub_5A4D8C(&qword_E0F6E0, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      sub_5A4D8C(&qword_E0F6E8, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59DE74;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59DE74()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59E1D4;
  }

  else
  {

    v2 = sub_59DF90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59DF90()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F6C0, &unk_B1A270, &qword_E0F7E8, &type metadata accessor for TVShow, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F6C8, &unk_B1F480);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    sub_AB4680();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59E1D4()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59E4B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return TVShow.shareURL.getter(a1);
}

uint64_t sub_59E568(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59E604, 0, 0);
}

uint64_t sub_59E604()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6F0, &qword_B1A2C0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6F8, &qword_B1A2C8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F700, &qword_B1A2D0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F708, &qword_B1A2D8);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59E8B4, 0, 0);
}

uint64_t sub_59E8B4()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB45D0();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB45E0();
      sub_5A4D8C(&qword_E0F710, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      sub_5A4D8C(&qword_E0F718, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59EB88;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59EB88()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59EEE8;
  }

  else
  {

    v2 = sub_59ECA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59ECA4()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F6F0, &qword_B1A2C0, &qword_E0F7E0, &type metadata accessor for UploadedAudio, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F6F8, &qword_B1A2C8);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59EEE8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_59F1CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t sub_59F264(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_59F300, 0, 0);
}

uint64_t sub_59F300()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t sub_59F3A8()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v6 = qword_E71B20;
  sub_AB3550();
  v7 = sub_AB9320();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F720, &qword_B1A310);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F728, &qword_B1A318);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F730, &qword_B1A320);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F738, &qword_B1A328);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_59F794, 0, 0);
}

uint64_t sub_59F794()
{
  v1 = v0[16];
  _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
  v2 = sub_AB31C0();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(v0[16], &qword_E0DC30, &unk_B15160);
    v4 = sub_AB4620();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = sub_AB4630();
      sub_5A4D8C(&qword_E0F740, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      sub_5A4D8C(&qword_E0F748, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

      sub_AB7F00();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = sub_59FA68;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_59FA68()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_59FDC8;
  }

  else
  {

    v2 = sub_59FB84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_59FB84()
{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_AB7F30();
  sub_58B9F8(&qword_E0F720, &qword_B1A310, &qword_E0F7D8, &type metadata accessor for UploadedVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    sub_12E1C(v12, &qword_E0F728, &qword_B1A318);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_59FDC8()
{
  v21 = v0;
  if (qword_E0CBA0 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E0F538);

  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = sub_AB8040();
    v9 = v8;

    v10 = sub_500C84(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&dword_0, v2, v3, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v4, 0x16u);
    sub_12E1C(v5, &qword_E0F560, &qword_B19F80);

    __swift_destroy_boxed_opaque_existential_0(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_5A00AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t sub_5A015C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5A01F8, 0, 0);
}

uint64_t sub_5A01F8()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_593374;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v55 = sub_AB4630();
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v53 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_AB45E0();
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_AB46B0();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_AB4710();
  v63 = *(v64 - 8);
  __chkstk_darwin();
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_AB4770();
  v66 = *(v67 - 8);
  __chkstk_darwin();
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_AB8AE0();
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_AB86C0();
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_AB4590();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v74 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_AB8540();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB8E50();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin();
  v80 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB8E20();
  v84 = *(v12 - 8);
  v85 = v12;
  __chkstk_darwin();
  v83 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB8030();
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin();
  v86 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB44B0();
  v90 = *(v16 - 8);
  v91 = v16;
  __chkstk_darwin();
  v89 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB87A0();
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin();
  v92 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_AB4550();
  v96 = *(v20 - 8);
  v97 = v20;
  __chkstk_darwin();
  v95 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_AB8A90();
  v98 = *(v22 - 8);
  v99 = v22;
  __chkstk_darwin();
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_AB88F0();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_AB8770();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_AB3F80();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin();
  v37 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v100, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v30 + 32))(v32, v37, v29);
    sub_AB8740();
    return (*(v30 + 8))(v32, v29);
  }

  v40 = v101;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v37, v33);
    (*(v26 + 32))(v28, v37, v25);
    sub_AB88D0();
    return (*(v26 + 8))(v28, v25);
  }

  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v37, v33);
    v41 = sub_AB31C0();
    return (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  }

  v42 = v101;
  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    goto LABEL_8;
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v34 + 96))(v37, v33);
    v45 = v98;
    v44 = v99;
    (*(v98 + 32))(v24, v37, v99);
    sub_AB8A70();
    return (*(v45 + 8))(v24, v44);
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v95;
    v47 = v96;
    v48 = v97;
    (*(v96 + 32))(v95, v37, v97);
    sub_AB4530();
  }

  else if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v92;
    v47 = v93;
    v48 = v94;
    (*(v93 + 32))(v92, v37, v94);
    sub_AB8780();
  }

  else if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v89;
    v47 = v90;
    v48 = v91;
    (*(v90 + 32))(v89, v37, v91);
    sub_AB4480();
  }

  else if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v86;
    v47 = v87;
    v48 = v88;
    (*(v87 + 32))(v86, v37, v88);
    sub_AB8000();
  }

  else if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v37, v33);
    v46 = v83;
    v47 = v84;
    v48 = v85;
    (*(v84 + 32))(v83, v37, v85);
    sub_AB8D20();
  }

  else
  {
    if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v37, v33);
      v43 = sub_AB31C0();
      return (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    }

    if (v38 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v81;
      v48 = v82;
      v46 = v80;
      (*(v81 + 32))(v80, v37, v82);
      sub_AB8E30();
    }

    else if (v38 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v37, v33);
      v47 = v78;
      v46 = v77;
      v48 = v79;
      (*(v78 + 32))(v77, v37, v79);
      sub_AB8520();
    }

    else
    {
      if (v38 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v38 == enum case for GenericMusicItem.song(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v72;
          v50 = v71;
          v51 = v73;
          (*(v72 + 32))(v71, v37, v73);
          sub_AB8670();
        }

        else if (v38 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v69;
          v50 = v68;
          v51 = v70;
          (*(v69 + 32))(v68, v37, v70);
          sub_AB8AC0();
        }

        else if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v66;
          v50 = v65;
          v51 = v67;
          (*(v66 + 32))(v65, v37, v67);
          sub_AB4740();
        }

        else if (v38 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v63;
          v50 = v62;
          v51 = v64;
          (*(v63 + 32))(v62, v37, v64);
          sub_AB46E0();
        }

        else if (v38 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v60;
          v50 = v59;
          v51 = v61;
          (*(v60 + 32))(v59, v37, v61);
          sub_AB4680();
        }

        else if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
        {
          (*(v34 + 96))(v37, v33);
          v49 = v57;
          v50 = v56;
          v51 = v58;
          (*(v57 + 32))(v56, v37, v58);
          _s16MusicKitInternal13UploadedAudioV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        else
        {
          if (v38 != enum case for GenericMusicItem.uploadedVideo(_:))
          {
            v42 = v101;
            if (v38 != enum case for GenericMusicItem.other(_:))
            {
              v52 = sub_AB31C0();
              (*(*(v52 - 8) + 56))(v40, 1, 1, v52);
              return (*(v34 + 8))(v37, v33);
            }

            goto LABEL_8;
          }

          (*(v34 + 96))(v37, v33);
          v49 = v54;
          v50 = v53;
          v51 = v55;
          (*(v54 + 32))(v53, v37, v55);
          _s16MusicKitInternal13UploadedVideoV0A4CoreE3url10Foundation3URLVSgvg_0();
        }

        return (*(v49 + 8))(v50, v51);
      }

      (*(v34 + 96))(v37, v33);
      v47 = v75;
      v46 = v74;
      v48 = v76;
      (*(v75 + 32))(v74, v37, v76);
      sub_AB4570();
    }
  }

  return (*(v47 + 8))(v46, v48);
}

uint64_t GenericMusicItem.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_AB4630();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_AB45E0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_AB46B0();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_AB4710();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_AB4770();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = sub_AB86C0();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = sub_AB8E20();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = sub_AB8030();
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = sub_AB44B0();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v12 = sub_AB88F0();
  v2[31] = v12;
  v2[32] = *(v12 - 8);
  v2[33] = swift_task_alloc();
  v13 = sub_AB8770();
  v2[34] = v13;
  v2[35] = *(v13 - 8);
  v2[36] = swift_task_alloc();
  v14 = sub_AB3F80();
  v2[37] = v14;
  v2[38] = *(v14 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_5A1A70, 0, 0);
}

uint64_t sub_5A1A70()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[35];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_5A2654;
    v10 = v0[2];

    return Album.shareURL.getter(v10);
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    (*(v0[38] + 96))(v12, v0[37]);
    (*(v14 + 32))(v13, v12, v15);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = sub_5A2870;
    v17 = v0[2];

    return Artist.shareURL.getter(v17);
  }

  if (v4 == enum case for GenericMusicItem.composer(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.creditArtist(_:))
  {
LABEL_12:
    v19 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    v20 = sub_AB31C0();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  if (v4 == enum case for GenericMusicItem.curator(_:) || v4 == enum case for GenericMusicItem.editorialItem(_:) || v4 == enum case for GenericMusicItem.genre(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v24 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    (*(v0[38] + 96))(v24, v0[37]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = swift_task_alloc();
    v0[42] = v28;
    *v28 = v0;
    v28[1] = sub_5A2A8C;
    v29 = v0[2];

    return MusicMovie.shareURL.getter(v29);
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v30 = v0[39];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    (*(v0[38] + 96))(v30, v0[37]);
    (*(v32 + 32))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = sub_5A2CA8;
    v35 = v0[2];

    return MusicVideo.shareURL.getter(v35);
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v36 = v0[39];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[22];
    (*(v0[38] + 96))(v36, v0[37]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[44] = v40;
    *v40 = v0;
    v40[1] = sub_5A2EC4;
    v41 = v0[2];

    return Playlist.shareURL.getter(v41);
  }

  if (v4 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.radioShow(_:) || v4 == enum case for GenericMusicItem.recordLabel(_:) || v4 == enum case for GenericMusicItem.socialProfile(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v42 = v0[39];
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    (*(v0[38] + 96))(v42, v0[37]);
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = sub_5A30E0;
    v47 = v0[2];

    return Song.shareURL.getter(v47);
  }

  if (v4 == enum case for GenericMusicItem.station(_:))
  {
LABEL_10:
    v18 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    GenericMusicItem.url.getter(v18);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  if (v4 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v48 = v0[39];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[16];
    (*(v0[38] + 96))(v48, v0[37]);
    (*(v50 + 32))(v49, v48, v51);
    v52 = swift_task_alloc();
    v0[46] = v52;
    *v52 = v0;
    v52[1] = sub_5A32FC;
    v53 = v0[2];

    return TVEpisode.shareURL.getter(v53);
  }

  else if (v4 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v54 = v0[39];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[13];
    (*(v0[38] + 96))(v54, v0[37]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v0[47] = v58;
    *v58 = v0;
    v58[1] = sub_5A3518;
    v59 = v0[2];

    return TVSeason.shareURL.getter(v59);
  }

  else if (v4 == enum case for GenericMusicItem.tvShow(_:))
  {
    v60 = v0[39];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    (*(v0[38] + 96))(v60, v0[37]);
    (*(v62 + 32))(v61, v60, v63);
    v64 = swift_task_alloc();
    v0[48] = v64;
    *v64 = v0;
    v64[1] = sub_5A3734;
    v65 = v0[2];

    return TVShow.shareURL.getter(v65);
  }

  else if (v4 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v66 = v0[39];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v0[38] + 96))(v66, v0[37]);
    (*(v68 + 32))(v67, v66, v69);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = sub_5A3950;
    v71 = v0[2];

    return UploadedAudio.shareURL.getter(v71);
  }

  else
  {
    if (v4 != enum case for GenericMusicItem.uploadedVideo(_:))
    {
      if (v4 != enum case for GenericMusicItem.other(_:))
      {
        v79 = v0[38];
        v78 = v0[39];
        v80 = v0[37];
        GenericMusicItem.url.getter(v0[2]);
        (*(v79 + 8))(v78, v80);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v72 = v0[39];
    v74 = v0[5];
    v73 = v0[6];
    v75 = v0[4];
    (*(v0[38] + 96))(v72, v0[37]);
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = sub_5A3B6C;
    v77 = v0[2];

    return UploadedVideo.shareURL.getter(v77);
  }
}

uint64_t sub_5A2654()
{

  return _swift_task_switch(sub_5A2750, 0, 0);
}

uint64_t sub_5A2750()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2870()
{

  return _swift_task_switch(sub_5A296C, 0, 0);
}

uint64_t sub_5A296C()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2A8C()
{

  return _swift_task_switch(sub_5A2B88, 0, 0);
}

uint64_t sub_5A2B88()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2CA8()
{

  return _swift_task_switch(sub_5A2DA4, 0, 0);
}

uint64_t sub_5A2DA4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A2EC4()
{

  return _swift_task_switch(sub_5A2FC0, 0, 0);
}

uint64_t sub_5A2FC0()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A30E0()
{

  return _swift_task_switch(sub_5A31DC, 0, 0);
}

uint64_t sub_5A31DC()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A32FC()
{

  return _swift_task_switch(sub_5A33F8, 0, 0);
}

uint64_t sub_5A33F8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3518()
{

  return _swift_task_switch(sub_5A3614, 0, 0);
}

uint64_t sub_5A3614()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3734()
{

  return _swift_task_switch(sub_5A3830, 0, 0);
}

uint64_t sub_5A3830()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3950()
{

  return _swift_task_switch(sub_5A3A4C, 0, 0);
}

uint64_t sub_5A3A4C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A3B6C()
{

  return _swift_task_switch(sub_5A3C68, 0, 0);
}

uint64_t sub_5A3C68()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v16[-v5];
  v7 = sub_AB3F80();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v0, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for GenericMusicItem.album(_:) || v12 == enum case for GenericMusicItem.artist(_:) || v12 == enum case for GenericMusicItem.composer(_:) || v12 == enum case for GenericMusicItem.curator(_:) || v12 == enum case for GenericMusicItem.genre(_:) || v12 == enum case for GenericMusicItem.musicMovie(_:) || v12 == enum case for GenericMusicItem.musicVideo(_:) || v12 == enum case for GenericMusicItem.playlist(_:) || v12 == enum case for GenericMusicItem.radioShow(_:) || v12 == enum case for GenericMusicItem.recordLabel(_:) || v12 == enum case for GenericMusicItem.socialProfile(_:) || v12 == enum case for GenericMusicItem.song(_:) || v12 == enum case for GenericMusicItem.station(_:) || v12 == enum case for GenericMusicItem.tvEpisode(_:) || v12 == enum case for GenericMusicItem.tvSeason(_:) || v12 == enum case for GenericMusicItem.tvShow(_:) || v12 == enum case for GenericMusicItem.uploadedAudio(_:) || v12 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v8 + 8))(v11, v7);
    sub_AB91E0();
    (*(v2 + 16))(v4, v6, v1);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v13 = qword_E71B20;
    sub_AB3550();
    v14 = sub_AB9320();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v14 = GenericMusicItem.failureMessage.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v14;
}

uint64_t sub_5A444C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17BD0;

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t sub_5A44E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_5A4584, 0, 0);
}

uint64_t sub_5A4584()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_5A4624;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

uint64_t sub_5A4624()
{

  return _swift_task_switch(sub_5A4720, 0, 0);
}

uint64_t sub_5A4720()
{
  v1 = *(v0 + 32);
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_AB30F0(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 40) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_5A4844()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E0F538);
  __swift_project_value_buffer(v0, qword_E0F538);
  return sub_AB4BB0();
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_5A4A1C(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F790, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4A74(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F798, &type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4ACC(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7A0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4B24(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7A8, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4B7C(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7B0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4BD4(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7B8, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4C2C(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7C0, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4C84(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7C8, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4CDC(uint64_t a1)
{
  result = sub_5A4D8C(&qword_E0F7D0, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4D34(uint64_t a1)
{
  result = sub_5A4D8C(&unk_E12FD0, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5A4D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5A4E14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a7;
  v52 = a8;
  v53 = a6;
  v54 = a9;
  v48 = a5;
  v46 = a4;
  v50 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v56 = a1;
  v57 = v12;
  v14 = *(v12 + 64);
  v55 = a11;
  __chkstk_darwin();
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v40 - v15;
  v47 = v14;
  v17 = __chkstk_darwin();
  v19 = &v40 - v18;
  v41 = *(v13 + 16);
  v41(&v40 - v18, v17);
  v44 = *(v13 + 80);
  v20 = (v44 + 40) & ~v44;
  v21 = v20 + v14;
  v42 = v44 | 7;
  v22 = swift_allocObject();
  v49 = v22;
  *(v22 + 2) = a10;
  *(v22 + 3) = a11;
  v43 = a2;
  *(v22 + 4) = a2;
  v23 = *(v57 + 32);
  v57 += 32;
  v23(v22 + v20, v19, a10);
  (v41)(v16, v56, a10);
  v24 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v55;
  *(v26 + 2) = a10;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  v23(v26 + v20, v16, a10);
  v28 = v26 + v24;
  v29 = v46;
  v30 = v46[1];
  *v28 = *v46;
  *(v28 + 1) = v30;
  *(v28 + 4) = *(v29 + 4);
  sub_36B0C(v48, v26 + v25, &qword_E0F858, &qword_B1A930);
  sub_70DF8(v50, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v45;
  v23(v45, v56, a10);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v44 + v33) & ~v44;
  v35 = swift_allocObject();
  v36 = v55;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v52;
  *(v35 + 4) = v51;
  *(v35 + 5) = v37;
  sub_36B0C(v53, v35 + v33, &qword_E0EAA0, &unk_B182A0);
  v23(v35 + v34, v31, a10);

  v38 = v54;
  v39 = v49;
  *v54 = sub_5A5FC0;
  v38[1] = v39;
  v38[2] = &unk_B1A938;
  v38[3] = v26;
  v38[4] = &unk_B1A948;
  v38[5] = v35;
}

void Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a7;
  v52 = a8;
  v53 = a6;
  v54 = a9;
  v48 = a5;
  v46 = a4;
  v50 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v56 = a1;
  v57 = v12;
  v14 = *(v12 + 64);
  v55 = a11;
  __chkstk_darwin();
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v40 - v15;
  v47 = v14;
  v17 = __chkstk_darwin();
  v19 = &v40 - v18;
  v41 = *(v13 + 16);
  v41(&v40 - v18, v17);
  v44 = *(v13 + 80);
  v20 = (v44 + 40) & ~v44;
  v21 = v20 + v14;
  v42 = v44 | 7;
  v22 = swift_allocObject();
  v49 = v22;
  *(v22 + 2) = a10;
  *(v22 + 3) = a11;
  v43 = a2;
  *(v22 + 4) = a2;
  v23 = *(v57 + 32);
  v57 += 32;
  v23(v22 + v20, v19, a10);
  (v41)(v16, v56, a10);
  v24 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v55;
  *(v26 + 2) = a10;
  *(v26 + 3) = v27;
  *(v26 + 4) = a2;
  v23(v26 + v20, v16, a10);
  v28 = v26 + v24;
  v29 = v46;
  v30 = v46[1];
  *v28 = *v46;
  *(v28 + 1) = v30;
  *(v28 + 4) = *(v29 + 4);
  sub_36B0C(v48, v26 + v25, &qword_E0F858, &qword_B1A930);
  sub_70DF8(v50, v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8));
  v31 = v45;
  v23(v45, v56, a10);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v44 + v33) & ~v44;
  v35 = swift_allocObject();
  v36 = v55;
  *(v35 + 2) = a10;
  *(v35 + 3) = v36;
  v37 = v52;
  *(v35 + 4) = v51;
  *(v35 + 5) = v37;
  sub_36B0C(v53, v35 + v33, &qword_E0EAA0, &unk_B182A0);
  v23(v35 + v34, v31, a10);

  v38 = v54;
  v39 = v49;
  *v54 = sub_5A8CDC;
  v38[1] = v39;
  v38[2] = &unk_B1A968;
  v38[3] = v26;
  v38[4] = &unk_B1A978;
  v38[5] = v35;
}

void Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v47 = a4;
  v48 = a7;
  v45 = a3;
  v49 = a1;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v43 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = v37 - v12;
  v14 = v13;
  v44 = v13;
  v15 = __chkstk_darwin();
  v17 = v37 - v16;
  v38 = *(v10 + 16);
  v38(v37 - v16, v15);
  v42 = *(v10 + 80);
  v18 = (v42 + 40) & ~v42;
  v19 = swift_allocObject();
  v46 = v19;
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  v40 = a6;
  v41 = a2;
  v20 = a2;
  *(v19 + 4) = a2;
  v21 = *(v10 + 32);
  v37[1] = v10 + 32;
  v21(v19 + v18, v17, a5);
  v22 = v39;
  (v38)(v39, v49, a5);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  *(v23 + 3) = a6;
  *(v23 + 4) = v20;
  v24 = v22;
  v25 = v21;
  v21(v23 + v18, v24, a5);
  v26 = v23 + ((v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v27 = v45;
  v28 = v45[1];
  *v26 = *v45;
  *(v26 + 1) = v28;
  *(v26 + 4) = *(v27 + 4);
  v29 = v43;
  v21(v43, v49, a5);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v42 + v31) & ~v42;
  v33 = swift_allocObject();
  v34 = v40;
  *(v33 + 16) = a5;
  *(v33 + 24) = v34;
  sub_36B0C(v47, v33 + v31, &qword_E0EAA0, &unk_B182A0);
  v25(v33 + v32, v29, a5);

  v35 = v48;
  v36 = v46;
  *v48 = sub_5AC5F8;
  v35[1] = v36;
  v35[2] = &unk_B1A998;
  v35[3] = v23;
  v35[4] = &unk_B1A9A8;
  v35[5] = v33;
}

void Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v39 = a3;
  v40 = a6;
  v36 = a2;
  v32 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v30 - v11;
  __chkstk_darwin();
  v13 = &v30 - v12;
  sub_12E1C(v14, &qword_E0EB30, &qword_B18450);
  v33 = *(v9 + 16);
  v33(v13, a1, a4);
  v35 = *(v9 + 80);
  v15 = (v35 + 40) & ~v35;
  v16 = swift_allocObject();
  v37 = v16;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  v17 = v36;
  *(v16 + 4) = v36;
  v31 = *(v9 + 32);
  v41 = v9 + 32;
  v31(v16 + v15, v13, a4);
  v18 = v34;
  v19 = v32;
  v33(v34, v32, a4);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  *(v20 + 4) = v17;
  v21 = v18;
  v22 = v31;
  v31(v20 + v15, v21, a4);
  v23 = v38;
  v22(v38, v19, a4);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = (*(v24 + 64) + v35 + v25) & ~v35;
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_36B0C(v39, v27 + v25, &qword_E0EAA0, &unk_B182A0);
  v22((v27 + v26), v23, a4);

  v28 = v40;
  v29 = v37;
  *v40 = sub_5AE388;
  v28[1] = v29;
  v28[2] = &unk_B1A9C8;
  v28[3] = v20;
  v28[4] = &unk_B1A9D8;
  v28[5] = v27;
}

uint64_t sub_5A5E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB8260();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F8, &qword_B1AB48);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_AB4070();
  sub_AB82C0();
  (*(v5 + 8))(v7, v4);
  v12 = sub_5A5FD8();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_5A5FD8()
{
  v1 = sub_AB8250();
  v24 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v21 - v3;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F8, &qword_B1AB48);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v22 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = *(v8 + 16);
  v23 = v0;
  v13(&v21 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_ABAD90(27);

      *&v26[0] = 0xD000000000000019;
      *(&v26[0] + 1) = 0x8000000000B6B4A0;
      (v13)(v22, v23, v7);
      v27._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v27);

      v18 = *&v26[0];
      (*(v8 + 8))(v12, v7);
      return v18;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v24;
  (*(v24 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.alreadyFavorited(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000011;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cannotFavoriteWhenDisliked(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD00000000000001DLL;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000018;
    }

    if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_E0CC60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v25);

      v26[4] = v25[4];
      v26[5] = v25[5];
      v26[6] = v25[6];
      v26[7] = v25[7];
      v26[0] = v25[0];
      v26[1] = v25[1];
      v26[2] = v25[2];
      v26[3] = v25[3];
      sub_70C54(v26);
      if ((WORD4(v26[0]) & 0x100) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0xD000000000000016;
      }

      goto LABEL_35;
    }

    if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0x6C20646572616853;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD00000000000001CLL;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000013;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000014;
      }

      if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.networkRequired(_:))
      {
        v18 = 0xD000000000000010;
      }

      else
      {
        if (v17 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD000000000000025;
        }

        v18 = 0x206E776F6E6B6E55;
        if (v17 != enum case for MusicLibrary.FavoriteAction.UnsupportedReason.unknown(_:))
        {
          *&v26[0] = 0;
          *(&v26[0] + 1) = 0xE000000000000000;
          sub_ABAD90(17);

          *&v26[0] = 0x206E776F6E6B6E55;
          *(&v26[0] + 1) = 0xEF206E6F73616572;
          v16(v21, v6, v1);
          v28._countAndFlagsBits = sub_AB9350();
          sub_AB94A0(v28);

          v18 = *&v26[0];
          v20 = *(v15 + 8);
          v20(v6, v1);
          v20(v4, v1);
          return v18;
        }
      }

LABEL_35:
      (*(v15 + 8))(v6, v1);
      return v18;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v18 = 0xD000000000000010;
  (*(v15 + 8))(v6, v1);
  return v18;
}

uint64_t sub_5A681C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = sub_AB8250();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = sub_AB8260();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F8, &qword_B1AB48);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(sub_5A69F4, 0, 0);
}

uint64_t sub_5A69F4(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[66];
  v37 = v1[65];
  v38 = v1[67];
  v4 = v1[63];
  v5 = v1[64];
  v6 = v1[62];
  sub_AB4070();
  sub_AB82C0();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 16))(v38, v2, v37);
  v7 = (*(v3 + 88))(v38, v37);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[67];
    v10 = v1[58];
    v9 = v1[59];
    v11 = v1[56];
    v12 = v1[57];
    (*(v1[66] + 96))(v8, v1[65]);
    (*(v12 + 32))(v9, v8, v11);
    (*(v12 + 16))(v10, v9, v11);
    v13 = (*(v12 + 88))(v10, v11);
    if (v13 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      sub_15F84(v1[52], (v1 + 14), &qword_E0F858, &qword_B1A930);
      if (v1[22] != 1)
      {
        sub_17704((v1 + 14), (v1 + 2));
        v1[81] = sub_AB9940();
        v1[82] = sub_AB9930();
        v33 = sub_AB98B0();
        v29 = v34;
        v1[83] = v33;
        v1[84] = v34;
        v27 = sub_5A76B0;
        v28 = v33;
        goto LABEL_14;
      }

      v14 = v1[53];
      sub_12E1C((v1 + 14), &qword_E0F858, &qword_B1A930);
      v15 = v14[3];
      v1[76] = v15;
      v1[77] = v14[4];
      v1[78] = __swift_project_boxed_opaque_existential_1(v14, v15);
      sub_AB9940();
      v1[79] = sub_AB9930();
      v16 = sub_AB98B0();
      v18 = v17;
      v19 = sub_5A747C;
LABEL_11:
      v27 = v19;
      v28 = v16;
      v29 = v18;
LABEL_14:

      return _swift_task_switch(v27, v28, v29);
    }

    if (v13 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v24 = v1[53];
      v25 = v24[3];
      v1[88] = v25;
      v1[89] = v24[4];
      v1[90] = __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_AB9940();
      v1[91] = sub_AB9930();
      v16 = sub_AB98B0();
      v18 = v26;
      v19 = sub_5A798C;
      goto LABEL_11;
    }

    v30 = v1 + 59;
    v31 = v1 + 57;
    v32 = v1 + 56;
    (*(v1[57] + 8))(v1[58], v1[56]);
    goto LABEL_18;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 67;
    v31 = v1 + 66;
    v32 = v1 + 65;
LABEL_18:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[66] + 8))(v1[68], v1[65]);

    v35 = v1[1];

    return v35();
  }

  v20 = swift_task_alloc();
  v1[69] = v20;
  *v20 = v1;
  v20[1] = sub_5A6EBC;
  v21 = v1[54];
  v22 = v1[55];
  v23 = v1[50];

  return MusicLibrary.favorite<A>(_:)(v23, v21, v22);
}

uint64_t sub_5A6EBC()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_5B0320;
  }

  else
  {
    v2 = sub_5A6FD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5A6FD0()
{
  sub_15F84(v0[51], (v0 + 44), &qword_E0EB30, &qword_B18450);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = __swift_project_boxed_opaque_existential_1(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    sub_AB9940();
    v0[74] = sub_AB9930();
    v3 = sub_AB98B0();

    return _swift_task_switch(sub_5A7154, v3, v2);
  }

  else
  {
    sub_12E1C((v0 + 44), &qword_E0EB30, &qword_B18450);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = sub_5A72B4;
    v5 = v0[52];

    return sub_773F98(v5);
  }
}

uint64_t sub_5A7154()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  sub_720990(v3, 0, v2, v1);
  sub_5B0254(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_5A7204, 0, 0);
}

uint64_t sub_5A7204()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  v1 = swift_task_alloc();
  v0[75] = v1;
  *v1 = v0;
  v1[1] = sub_5A72B4;
  v2 = v0[52];

  return sub_773F98(v2);
}

uint64_t sub_5A72B4()
{

  return _swift_task_switch(sub_5A73B0, 0, 0);
}

uint64_t sub_5A73B0()
{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5A747C()
{
  v6 = v0[77];

  sub_6004AC(5, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_5A75AC;
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

uint64_t sub_5A75AC()
{
  v1 = *v0;

  sub_111904(v1 + 280);

  return _swift_task_switch(sub_5B0324, 0, 0);
}

uint64_t sub_5A76B0(uint64_t a1)
{
  v2 = sub_AB9930();
  v1[85] = v2;
  v3 = swift_task_alloc();
  v1[86] = v3;
  *(v3 + 16) = 5;
  *(v3 + 24) = v1 + 2;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v1[87] = v4;
  *v4 = v1;
  v4[1] = sub_5A77C4;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 93, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_5B0344, v3, &type metadata for Bool);
}

uint64_t sub_5A77C4()
{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(sub_5A7924, v3, v2);
}

uint64_t sub_5A7924()
{

  return _swift_task_switch(sub_5B0348, 0, 0);
}

uint64_t sub_5A798C()
{
  v6 = v0[89];

  sub_5FEC68(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = sub_5A7ABC;
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

uint64_t sub_5A7ABC()
{
  v1 = *v0;

  sub_111904(v1 + 208);

  return _swift_task_switch(sub_5B0324, 0, 0);
}

uint64_t sub_5A7BC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_5A681C(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t sub_5A7CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_5A7F08, 0, 0);
}

uint64_t sub_5A7F08()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_15F84(*(v0 + 88), v4, &qword_E0EAA0, &unk_B182A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 232), &qword_E0EAA0, &unk_B182A0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_53EEE4(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = sub_AB31C0();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_51717C(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 328) = sub_AB9930();
    v19 = sub_AB98B0();

    return _swift_task_switch(sub_5A8214, v19, v18);
  }
}

uint64_t sub_5A8214()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_15F84(v3, v4, &qword_E0DC30, &unk_B15160);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348, &unk_B17520);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5637;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30, &unk_B15160);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348, &unk_B17520);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348, &unk_B17520);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_5B0254(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348, &unk_B17520);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 160), &qword_E0E348, &unk_B17520);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_5B0254(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348, &unk_B17520);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_12E1C(*(v0 + 152), &qword_E0E348, &unk_B17520);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_15F84(v36 + v14[6], *(v0 + 208), &qword_E0DC30, &unk_B15160);
    sub_5B0254(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_36B0C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_E0DC30, &unk_B15160);
  sub_15F84(v37, v38, &qword_E0E348, &unk_B17520);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348, &unk_B17520);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_5B0254(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348, &unk_B17520);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348, &unk_B17520);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_5B0254(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348, &unk_B17520);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348, &unk_B17520);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_5B0254(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348, &unk_B17520);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348, &unk_B17520);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_5B0254(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_5B0254(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30, &unk_B15160);

  return _swift_task_switch(sub_5B02BC, 0, 0);
}

uint64_t sub_5A89C8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_17CF8;

  return sub_5A7CF0(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_5A8B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_AB8300();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F0, &qword_B1AAF8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_AB3FE0();
  sub_AB82C0();
  (*(v5 + 8))(v7, v4);
  v12 = sub_5A8CF4();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_5A8CF4()
{
  v1 = sub_AB82F0();
  v25 = *(v1 - 8);
  __chkstk_darwin();
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F8F0, &qword_B1AAF8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(v8 + 16);
  v24 = v0;
  v13(&v22 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v27[0] = 0;
      *(&v27[0] + 1) = 0xE000000000000000;
      sub_ABAD90(27);

      *&v27[0] = 0xD000000000000019;
      *(&v27[0] + 1) = 0x8000000000B6B4A0;
      (v13)(v23, v24, v7);
      v28._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v28);

      v19 = *&v27[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v25;
  (*(v25 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  v18 = v6;
  if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.notFavorited(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0x6F76614620746F4ELL;
    }

    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionRequired(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0xD000000000000018;
    }

    if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      if (qword_E0CC60 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v26);

      v27[4] = v26[4];
      v27[5] = v26[5];
      v27[6] = v26[6];
      v27[7] = v26[7];
      v27[0] = v26[0];
      v27[1] = v26[1];
      v27[2] = v26[2];
      v27[3] = v26[3];
      sub_70C54(v27);
      if ((WORD4(v27[0]) & 0x100) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0xD000000000000016;
      }

      goto LABEL_31;
    }

    if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.sharedLibrary(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0x6C20646572616853;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryInitialImport(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD00000000000001CLL;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.libraryAddIneligibleContent(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000013;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.invalidContentType(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000014;
      }

      if (v17 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.subscriptionAccountLinkingRequired(_:))
      {
        (*(v15 + 8))(v6, v1);
        return 0xD000000000000025;
      }

      v19 = 0x206E776F6E6B6E55;
      if (v17 != enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.unknown(_:))
      {
        *&v27[0] = 0;
        *(&v27[0] + 1) = 0xE000000000000000;
        sub_ABAD90(17);

        *&v27[0] = 0x206E776F6E6B6E55;
        *(&v27[0] + 1) = 0xEF206E6F73616572;
        v16(v22, v18, v1);
        v29._countAndFlagsBits = sub_AB9350();
        sub_AB94A0(v29);

        v19 = *&v27[0];
        v21 = *(v15 + 8);
        v21(v18, v1);
        v21(v4, v1);
        return v19;
      }

LABEL_31:
      (*(v15 + 8))(v18, v1);
      return v19;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v19 = 0xD000000000000010;
  (*(v15 + 8))(v18, v1);
  return v19;
}