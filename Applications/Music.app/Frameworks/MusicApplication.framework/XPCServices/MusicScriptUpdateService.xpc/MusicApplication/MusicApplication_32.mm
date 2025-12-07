uint64_t sub_100329628(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_100329680()
{

  return swift_deallocObject();
}

uint64_t sub_1003296E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1004BD9C4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100329778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB634();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v62 = sub_100003ABC(&qword_10060CB58, &unk_1004DFDA0);
  __chkstk_darwin();
  v67 = &v51 - v10;
  v69 = type metadata accessor for ArtworkImage.ViewModel(0);
  v11 = *(v69 - 8);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v64 = &v51 - v14;
  v65 = sub_100003ABC(&unk_10060DF20, &qword_1004E15B0);
  __chkstk_darwin();
  v71 = &v51 - v15;
  v70 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v66 = &v51 - v19;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (v20 && a1 != a2)
    {
      v54 = v9;
      v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v63 = (v11 + 48);
      v57 = (v5 + 48);
      v58 = v4;
      v51 = (v5 + 32);
      v52 = v7;
      v53 = (v5 + 8);
      v61 = *(v18 + 72);
      v24 = v64;
      v25 = v66;
      v59 = v13;
      v56 = v17;
      while (1)
      {
        sub_10034BD68(v22, v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        v68 = v22;
        sub_10034BD68(v23, v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        v26 = *v25 == *v17 && v25[1] == v17[1];
        if (!v26 && (sub_1004BD9C4() & 1) == 0)
        {
LABEL_32:
          sub_10034C2B8(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_10034C2B8(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v27 = v71;
        v28 = *(v70 + 20);
        v29 = *(v65 + 48);
        sub_10000F778(v25 + v28, v71, &qword_10060EF20, &qword_1004D9F00);
        sub_10000F778(v17 + v28, v27 + v29, &qword_10060EF20, &qword_1004D9F00);
        v30 = *v63;
        v31 = v27;
        v32 = v69;
        if ((*v63)(v31, 1, v69) == 1)
        {
          break;
        }

        v60 = v20;
        v34 = v71;
        sub_10000F778(v71, v24, &qword_10060EF20, &qword_1004D9F00);
        if (v30(v34 + v29, 1, v32) == 1)
        {
          sub_10034C2B8(v24, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
LABEL_26:
          v48 = &unk_10060DF20;
          v49 = &qword_1004E15B0;
          goto LABEL_31;
        }

        v35 = v59;
        sub_10034BDD4(v71 + v29, v59, type metadata accessor for ArtworkImage.ViewModel);
        if ((sub_1004BB6B4() & 1) == 0)
        {
          sub_10034C2B8(v35, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v36 = *(v69 + 20);
        v37 = *(v62 + 48);
        v38 = v67;
        sub_10000F778(v24 + v36, v67, &qword_10060DD10, &qword_1004DEE10);
        sub_10000F778(v35 + v36, v38 + v37, &qword_10060DD10, &qword_1004DEE10);
        v39 = *v57;
        v40 = v38;
        v41 = v58;
        if ((*v57)(v40, 1, v58) == 1)
        {
          sub_10034C2B8(v35, type metadata accessor for ArtworkImage.ViewModel);
          v42 = v39(v67 + v37, 1, v41);
          v17 = v56;
          if (v42 != 1)
          {
            goto LABEL_29;
          }

          sub_100007214(v67, &qword_10060DD10, &qword_1004DEE10);
          v24 = v64;
          sub_10034C2B8(v64, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
          v20 = v60;
          goto LABEL_18;
        }

        v43 = v67;
        v44 = v54;
        sub_10000F778(v67, v54, &qword_10060DD10, &qword_1004DEE10);
        if (v39(v43 + v37, 1, v41) == 1)
        {
          sub_10034C2B8(v59, type metadata accessor for ArtworkImage.ViewModel);
          (*v53)(v44, v41);
          v17 = v56;
LABEL_29:
          sub_100007214(v67, &qword_10060CB58, &unk_1004DFDA0);
          v24 = v64;
LABEL_30:
          v25 = v66;
          sub_10034C2B8(v24, type metadata accessor for ArtworkImage.ViewModel);
          v48 = &qword_10060EF20;
          v49 = &qword_1004D9F00;
LABEL_31:
          sub_100007214(v71, v48, v49);
          goto LABEL_32;
        }

        v45 = v52;
        (*v51)(v52, v43 + v37, v41);
        sub_10034A084(&qword_10060CB60, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
        v55 = sub_1004BBD84();
        v46 = *v53;
        (*v53)(v45, v41);
        sub_10034C2B8(v59, type metadata accessor for ArtworkImage.ViewModel);
        v46(v44, v41);
        sub_100007214(v43, &qword_10060DD10, &qword_1004DEE10);
        v24 = v64;
        sub_10034C2B8(v64, type metadata accessor for ArtworkImage.ViewModel);
        sub_100007214(v71, &qword_10060EF20, &qword_1004D9F00);
        v17 = v56;
        v25 = v66;
        v20 = v60;
        if ((v55 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v47 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v25 + *(v70 + 24), v17 + *(v70 + 24));
        sub_10034C2B8(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_10034C2B8(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v47)
        {
          v23 += v61;
          v22 = v68 + v61;
          if (--v20)
          {
            continue;
          }
        }

        return v47 & 1;
      }

      v33 = v30(v71 + v29, 1, v32);
      v25 = v66;
      if (v33 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      sub_100007214(v71, &qword_10060EF20, &qword_1004D9F00);
      goto LABEL_21;
    }

    v47 = 1;
  }

  else
  {
LABEL_33:
    v47 = 0;
  }

  return v47 & 1;
}

uint64_t sub_10032A08C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MusicCoreUI16PlaylistCuratorsO4ViewV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = sub_1004BB6C4();
  v4 = *(v46 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v44 = &v34 - v6;
  v43 = sub_100003ABC(&qword_10060E048, &qword_1004E23F0);
  __chkstk_darwin();
  v8 = &v34 - v7;
  v42 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v47 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = (&v34 - v11);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = (v4 + 48);
    v35 = (v4 + 32);
    v36 = (v4 + 48);
    v37 = (v4 + 8);
    v41 = *(v10 + 72);
    v17 = v44;
    v18 = v45;
    while (1)
    {
      sub_10034BD68(v14, v18, type metadata accessor for PlaylistCurators.Curator);
      v19 = v47;
      sub_10034BD68(v15, v47, type metadata accessor for PlaylistCurators.Curator);
      v20 = *v18 == *v19 && v18[1] == v19[1];
      if (!v20 && (sub_1004BD9C4() & 1) == 0)
      {
        break;
      }

      v21 = v18;
      v22 = v16;
      v23 = *(v42 + 20);
      v24 = *(v43 + 48);
      sub_10000F778(v21 + v23, v8, &unk_10060EBE0, &unk_1004DBE60);
      sub_10000F778(v47 + v23, &v8[v24], &unk_10060EBE0, &unk_1004DBE60);
      v25 = *v22;
      if ((*v22)(v8, 1, v46) == 1)
      {
        if (v25(&v8[v24], 1, v46) != 1)
        {
          goto LABEL_19;
        }

        v16 = v22;
        sub_100007214(v8, &unk_10060EBE0, &unk_1004DBE60);
        sub_10034C2B8(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        sub_10034C2B8(v45, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v40 = v14;
        v26 = v8;
        sub_10000F778(v8, v17, &unk_10060EBE0, &unk_1004DBE60);
        if (v25(&v8[v24], 1, v46) == 1)
        {
          (*v37)(v17, v46);
LABEL_19:
          sub_100007214(v8, &qword_10060E048, &qword_1004E23F0);
          v18 = v45;
          break;
        }

        v27 = &v8[v24];
        v28 = v38;
        v29 = v46;
        (*v35)(v38, v27, v46);
        sub_10034A084(&qword_10060E050, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v39 = sub_1004BBD84();
        v30 = *v37;
        v31 = v28;
        v32 = v44;
        (*v37)(v31, v29);
        v17 = v32;
        v30(v32, v29);
        sub_100007214(v26, &unk_10060EBE0, &unk_1004DBE60);
        sub_10034C2B8(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        v16 = v36;
        sub_10034C2B8(v45, type metadata accessor for PlaylistCurators.Curator);
        v8 = v26;
        v14 = v40;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v41;
      v14 += v41;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_10034C2B8(v47, type metadata accessor for PlaylistCurators.Curator);
    sub_10034C2B8(v18, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_10034946C(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_10034946C(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = sub_1004BBA84();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v3 + 16);
  v9(&v12 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  sub_1004B8564();
  v10 = *(v3 + 8);
  v10(a1, v2);
  return (v10)(v8, v2);
}

uint64_t sub_10032A870(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v3);
    sub_100051DEC(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1004B85B4();
  }

  return result;
}

uint64_t sub_10032A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100003ABC(&qword_10060E4C0, &qword_1004E1B68);
  v5[7] = swift_task_alloc();
  v6 = sub_100003ABC(&qword_10060E4C8, &qword_1004E1B70);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_100003ABC(&qword_10060E4D0, &qword_1004E1B78);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_100003ABC(&qword_10060E4D8, &qword_1004E1B80);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10032AAE0, 0, 0);
}

uint64_t sub_10032AAE0()
{
  sub_1004BBA84();
  sub_1004BB7D4();
  sub_10034A084(&qword_10060E4E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  sub_1004BAC34();
  swift_getKeyPath();
  v0[2] = sub_1004BB974();
  v0[3] = v1;
  sub_1004BAC24();

  sub_1004BC474();
  v0[17] = sub_1004BC464();
  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_10032AC4C, v3, v2);
}

uint64_t sub_10032AC4C()
{

  sub_1000206D4(&qword_10060E4E8, &qword_10060E4D8, &qword_1004E1B80, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  *(v0 + 144) = sub_1004B7774();

  return _swift_task_switch(sub_10032ACF8, 0, 0);
}

uint64_t sub_10032ACF8()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  sub_1004B7794();

  sub_100009130(0, &qword_10060E4F0, OS_dispatch_queue_ptr);
  v6 = sub_1004BCB44();
  v0[4] = v6;
  v7 = sub_1004BCB24();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000206D4(&qword_10060E4F8, &qword_10060E4C8, &qword_1004E1B70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10034FDC0();
  sub_1004B8614();
  sub_100007214(v4, &qword_10060E4C0, &qword_1004E1B68);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_1000206D4(&qword_10060E508, &qword_10060E4D0, &qword_1004E1B78, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v8 = sub_1004B8644();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

void sub_10032AFC0(uint64_t a1, uint64_t a2)
{
  v222 = a1;
  sub_100003ABC(&unk_10060DB30, &qword_1004DD160);
  __chkstk_darwin();
  v218 = &v184 - v3;
  v4 = sub_1004BB7D4();
  v216 = *(v4 - 8);
  __chkstk_darwin();
  v230 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v215 = &v184 - v6;
  __chkstk_darwin();
  v233 = &v184 - v7;
  __chkstk_darwin();
  v225 = &v184 - v8;
  v227 = sub_100003ABC(&qword_10060E510, &qword_1004E1BB0);
  v207 = *(v227 - 8);
  __chkstk_darwin();
  v206 = &v184 - v9;
  v205 = sub_100003ABC(&qword_10060E518, &qword_1004E1BB8);
  __chkstk_darwin();
  v226 = &v184 - v10;
  v198 = sub_1004B6CD4();
  v196 = *(v198 - 8);
  __chkstk_darwin();
  v191 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_100003ABC(&qword_10060E520, &qword_1004E1BC0);
  __chkstk_darwin();
  v197 = &v184 - v12;
  v204 = sub_1004BBA84();
  v203 = *(v204 - 1);
  __chkstk_darwin();
  v201 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v202 = &v184 - v14;
  __chkstk_darwin();
  v194 = &v184 - v15;
  sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  __chkstk_darwin();
  v192 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v199 = &v184 - v17;
  __chkstk_darwin();
  v200 = &v184 - v18;
  sub_100003ABC(&qword_10060DF08, &qword_1004E1558);
  __chkstk_darwin();
  v224 = &v184 - v19;
  v217 = sub_1004BB794();
  v212 = *(v217 - 8);
  __chkstk_darwin();
  v210 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v211 = &v184 - v21;
  v231 = sub_1004BB844();
  v232 = *(v231 - 8);
  __chkstk_darwin();
  v213 = &v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_100003ABC(&qword_10060E528, &qword_1004E1BC8);
  v237 = *(v236 - 8);
  __chkstk_darwin();
  v219 = &v184 - v23;
  v234 = sub_1004B80B4();
  v228 = *(v234 - 8);
  __chkstk_darwin();
  v220 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v209 = &v184 - v25;
  __chkstk_darwin();
  v208 = &v184 - v26;
  __chkstk_darwin();
  v229 = &v184 - v27;
  v214 = sub_100003ABC(&qword_10060DEE8, &qword_1004E1418);
  __chkstk_darwin();
  v193 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v223 = &v184 - v29;
  __chkstk_darwin();
  v31 = &v184 - v30;
  __chkstk_darwin();
  v33 = &v184 - v32;
  __chkstk_darwin();
  v238 = &v184 - v34;
  sub_100003ABC(&qword_10060E530, &qword_1004E1BD0);
  __chkstk_darwin();
  v36 = &v184 - v35;
  sub_100003ABC(&qword_10060E538, &qword_1004E1BD8);
  __chkstk_darwin();
  v221 = (&v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v39 = &v184 - v38;
  __chkstk_darwin();
  v41 = &v184 - v40;
  __chkstk_darwin();
  v43 = &v184 - v42;
  __chkstk_darwin();
  v239 = &v184 - v44;
  swift_beginAccess();
  v235 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v46 = *(Strong + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v46)
    {
      v47 = sub_1004B7784();

      if (v47)
      {
        v190 = v4;
        sub_10000F778(v222, v36, &qword_10060E530, &qword_1004E1BD0);
        v48 = sub_100003ABC(&qword_10060E540, &qword_1004E1BE0);
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v36, 1, v48) == 1)
        {
          sub_100007214(v36, &qword_10060E530, &qword_1004E1BD0);
        }

        else
        {
          v50 = sub_1004BAC54();
          (*(v49 + 8))(v36, v48);
          if (*(v50 + 16))
          {
            v51 = v236;
            (*(v237 + 16))(v239, v50 + ((*(v237 + 80) + 32) & ~*(v237 + 80)), v236);

            v52 = 0;
            v53 = v238;
            goto LABEL_10;
          }
        }

        v52 = 1;
        v53 = v238;
        v51 = v236;
LABEL_10:
        v54 = v237;
        v55 = v239;
        (*(v237 + 56))(v239, v52, 1, v51);
        sub_10000F778(v55, v43, &qword_10060E538, &qword_1004E1BD8);
        v56 = *(v54 + 48);
        v187 = v54 + 48;
        v186 = v56;
        if (v56(v43, 1, v51) == 1)
        {
          sub_100007214(v43, &qword_10060E538, &qword_1004E1BD8);
          v57 = v232;
          v58 = (*(v232 + 56))(v53, 1, 1, v231);
        }

        else
        {
          swift_getKeyPath();
          sub_1004BAB54();
          v53 = v238;

          v58 = (*(v54 + 8))(v43, v51);
          v57 = v232;
        }

        v60 = v229;
        v61 = Logger.collaboration.unsafeMutableAddressor(v58, v59);
        v62 = v228;
        v63 = *(v228 + 16);
        v188 = v61;
        v64 = v234;
        v222 = v228 + 16;
        v189 = v63;
        v63(v60);
        sub_10000F778(v239, v41, &qword_10060E538, &qword_1004E1BD8);
        sub_10000F778(v53, v33, &qword_10060DEE8, &qword_1004E1418);
        v65 = sub_1004B8094();
        v185 = sub_1004BC9A4();
        if (os_log_type_enabled(v65, v185))
        {
          v66 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          v241 = v184;
          *v66 = 136446466;
          sub_10000F778(v41, v39, &qword_10060E538, &qword_1004E1BD8);
          v67 = sub_1004BBF04();
          v69 = v68;
          sub_100007214(v41, &qword_10060E538, &qword_1004E1BD8);
          v70 = sub_1002C4260(v67, v69, &v241);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2082;
          sub_10000F778(v33, v31, &qword_10060DEE8, &qword_1004E1418);
          v71 = sub_1004BBF04();
          v73 = v72;
          sub_100007214(v33, &qword_10060DEE8, &qword_1004E1418);
          v74 = v71;
          v57 = v232;
          v75 = sub_1002C4260(v74, v73, &v241);

          *(v66 + 14) = v75;
          _os_log_impl(&_mh_execute_header, v65, v185, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v66, 0x16u);
          swift_arrayDestroy();

          v64 = v234;

          v76 = *(v62 + 8);
          v76(v229, v64);
        }

        else
        {

          sub_100007214(v33, &qword_10060DEE8, &qword_1004E1418);
          sub_100007214(v41, &qword_10060E538, &qword_1004E1BD8);
          v76 = *(v62 + 8);
          v76(v60, v64);
        }

        v77 = v237;
        v78 = v231;
        v79 = v221;
        sub_10000F778(v239, v221, &qword_10060E538, &qword_1004E1BD8);
        v80 = v236;
        v81 = v186(v79, 1, v236);
        v82 = v224;
        v83 = v223;
        if (v81 == 1)
        {
          sub_100007214(v79, &qword_10060E538, &qword_1004E1BD8);
LABEL_25:
          v99 = v220;
          v189(v220, v188, v64);
          v100 = sub_1004B8094();
          v101 = sub_1004BC9A4();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&_mh_execute_header, v100, v101, "[Management] Dismissing management sheet", v102, 2u);
          }

          v76(v99, v64);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v242[0] = 1;
            sub_1004B85B4();
          }

LABEL_29:
          sub_100007214(v238, &qword_10060DEE8, &qword_1004E1418);
          sub_100007214(v239, &qword_10060E538, &qword_1004E1BD8);
          return;
        }

        v84 = v79;
        v85 = v219;
        (*(v77 + 32))(v219, v84, v80);
        sub_10000F778(v238, v83, &qword_10060DEE8, &qword_1004E1418);
        v229 = *(v57 + 48);
        if ((v229)(v83, 1, v78) == 1)
        {
          (*(v77 + 8))(v85, v80);
          sub_100007214(v83, &qword_10060DEE8, &qword_1004E1418);
          v64 = v234;
          goto LABEL_25;
        }

        v214 = v76;
        v86 = v213;
        (*(v57 + 32))(v213, v83, v78);
        sub_1004BB814();
        v87 = v212;
        v88 = v217;
        if ((*(v212 + 48))(v82, 1, v217) == 1)
        {
          (*(v57 + 8))(v86, v78);
          (*(v77 + 8))(v219, v236);
          sub_100007214(v82, &qword_10060DF08, &qword_1004E1558);
LABEL_24:
          v64 = v234;
          v76 = v214;
          goto LABEL_25;
        }

        v89 = v211;
        (*(v87 + 32))(v211, v82, v88);
        v90 = v210;
        (*(v87 + 104))(v210, enum case for Playlist.Collaborator.Status.notJoined(_:), v88);
        sub_10034A084(&unk_10060DF10, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
        v91 = v87;
        v92 = sub_1004BBD84();
        v93 = v217;
        v94 = v92;
        v96 = *(v91 + 8);
        v95 = v91 + 8;
        v97 = v90;
        v98 = v96;
        v96(v97, v217);
        if (v94)
        {
          v98(v89, v93);
          (*(v232 + 8))(v213, v78);
          (*(v77 + 8))(v219, v236);
          goto LABEL_24;
        }

        v212 = v95;
        swift_beginAccess();
        v103 = swift_weakLoadStrong();
        v104 = v232;
        if (!v103 || (swift_getKeyPath(), swift_getKeyPath(), sub_1004B85A4(), , , , v241 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v122 = v202;
            sub_1004BAB44();
            swift_getKeyPath();
            swift_getKeyPath();
            v123 = v203;
            v124 = v204;
            (*(v203 + 16))(v201, v122, v204);
            sub_1004B85B4();
            (*(v123 + 8))(v122, v124);
          }

          swift_beginAccess();
          v125 = swift_weakLoadStrong();
          v126 = v226;
          if (v125)
          {
            v127 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v241) = v127 & 1;
            sub_1004B85B4();
          }

          v204 = v98;
          v128 = v206;
          sub_1004BAB64();
          v129 = v207;
          v130 = v227;
          (*(v207 + 16))(v126, v128, v227);
          v131 = *(v205 + 36);
          v132 = sub_1000206D4(&qword_10060E548, &qword_10060E510, &qword_1004E1BB0, &protocol conformance descriptor for MusicItemCollection<A>);
          sub_1004BC724();
          (*(v129 + 8))(v128, v130);
          swift_beginAccess();
          sub_1004BC764();
          if (*&v131[v126] == v241)
          {
            v220 = _swiftEmptyArrayStorage;
            v224 = _swiftEmptyArrayStorage;
          }

          else
          {
            v147 = v216;
            v229 = (v216 + 16);
            v148 = (v216 + 32);
            v221 = (v216 + 8);
            v210 = (v216 + 56);
            v224 = _swiftEmptyArrayStorage;
            v220 = _swiftEmptyArrayStorage;
            v223 = v131;
            do
            {
              v154 = v132;
              v155 = sub_1004BC844();
              v156 = *v229;
              v157 = v225;
              v158 = v190;
              (*v229)(v225);
              v155(&v241, 0);
              v132 = v154;
              sub_1004BC774();
              v159 = *v148;
              v160 = v233;
              (*v148)(v233, v157, v158);
              v161 = sub_1004BB7C4();
              if (v161 == 2 || (v161 & 1) == 0)
              {
                v156(v230, v160, v158);
                v166 = v224;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v166 = sub_1003BEEBC(0, *(v166 + 2) + 1, 1, v166);
                }

                v168 = *(v166 + 2);
                v167 = *(v166 + 3);
                if (v168 >= v167 >> 1)
                {
                  v166 = sub_1003BEEBC((v167 > 1), v168 + 1, 1, v166);
                }

                *(v166 + 2) = v168 + 1;
                v169 = (*(v147 + 80) + 32) & ~*(v147 + 80);
                v224 = v166;
                v159(&v166[v169 + *(v147 + 72) * v168], v230, v158);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v149 = sub_1004B8594();
                  v150 = v218;
                  v151 = v233;
                  sub_100347BA0(v233, v218);
                  v152 = v150;
                  v147 = v216;
                  sub_100007214(v152, &unk_10060DB30, &qword_1004DD160);
                  v149(&v241, 0);
                  v153 = v151;
                  v132 = v154;

                  (*v221)(v153, v190);
                }

                else
                {
                  (*v221)(v233, v158);
                  v170 = v218;
                  (*v210)(v218, 1, 1, v158);
                  sub_100007214(v170, &unk_10060DB30, &qword_1004DD160);
                }
              }

              else
              {
                v156(v215, v160, v158);
                v162 = v220;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v162 = sub_1003BEEBC(0, *(v162 + 2) + 1, 1, v162);
                }

                v220 = v162;
                v164 = *(v162 + 2);
                v163 = *(v162 + 3);
                if (v164 >= v163 >> 1)
                {
                  v220 = sub_1003BEEBC((v163 > 1), v164 + 1, 1, v220);
                }

                (*(v147 + 8))(v160, v158);
                v165 = v220;
                *(v220 + 2) = v164 + 1;
                v159(&v165[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v164], v215, v158);
              }

              v126 = v226;
              sub_1004BC764();
            }

            while (*&v223[v126] != v241);
          }

          sub_100007214(v126, &qword_10060E518, &qword_1004E1BB8);
          swift_beginAccess();
          v133 = swift_weakLoadStrong();
          v134 = v224;
          if (v133)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v240[1] = v134;

            sub_1004B85B4();
          }

          swift_beginAccess();
          v135 = swift_weakLoadStrong();
          v136 = v208;
          v137 = v220;
          if (v135)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v240[0] = v137;

            sub_1004B85B4();
          }

          v138 = v234;
          v189(v136, v188, v234);

          v139 = sub_1004B8094();
          v140 = sub_1004BC974();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v240[0] = v142;
            *v141 = 136315138;
            v143 = sub_1004BC2B4();
            v145 = v144;

            v146 = sub_1002C4260(v143, v145, v240);

            *(v141 + 4) = v146;
            _os_log_impl(&_mh_execute_header, v139, v140, "[Management] pendingCollaborators=%s", v141, 0xCu);
            sub_100004C6C(v142);
          }

          else
          {
          }

          v171 = v136;
          v172 = v214;
          v214(v171, v138);
          v173 = v209;
          v189(v209, v188, v138);

          v174 = sub_1004B8094();
          v175 = sub_1004BC974();

          if (os_log_type_enabled(v174, v175))
          {
            v176 = v173;
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v240[0] = v178;
            *v177 = 136315138;
            v179 = sub_1004BC2B4();
            v180 = v172;
            v182 = v181;

            v183 = sub_1002C4260(v179, v182, v240);

            *(v177 + 4) = v183;
            _os_log_impl(&_mh_execute_header, v174, v175, "[Management] activeCollaborators=%s", v177, 0xCu);
            sub_100004C6C(v178);

            v180(v176, v234);
          }

          else
          {

            v172(v173, v138);
          }

          (v204)(v211, v217);
          (*(v232 + 8))(v213, v231);
          (*(v237 + 8))(v219, v236);
          goto LABEL_29;
        }

        swift_beginAccess();
        v105 = swift_weakLoadStrong();
        v106 = v196;
        v107 = v199;
        if (v105)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v108 = v194;
          sub_1004B85A4();

          v109 = v193;
          sub_1004BB854();
          (*(v203 + 8))(v108, v204);
          if ((v229)(v109, 1, v78) != 1)
          {
            v110 = v200;
            sub_1004BB834();
            (*(v104 + 8))(v109, v78);
            v111 = v198;
LABEL_38:
            sub_1004BB834();
            v112 = *(v195 + 48);
            v113 = v197;
            sub_10000F778(v110, v197, &qword_10060DEF0, &qword_1004E1420);
            sub_10000F778(v107, v113 + v112, &qword_10060DEF0, &qword_1004E1420);
            v114 = v106;
            v115 = *(v106 + 48);
            if (v115(v113, 1, v111) == 1)
            {
              sub_100007214(v107, &qword_10060DEF0, &qword_1004E1420);
              sub_100007214(v110, &qword_10060DEF0, &qword_1004E1420);
              if (v115(v113 + v112, 1, v111) == 1)
              {
                sub_100007214(v113, &qword_10060DEF0, &qword_1004E1420);
                goto LABEL_47;
              }
            }

            else
            {
              v116 = v192;
              sub_10000F778(v113, v192, &qword_10060DEF0, &qword_1004E1420);
              if (v115(v113 + v112, 1, v111) != 1)
              {
                v117 = v113 + v112;
                v118 = v191;
                (*(v114 + 32))(v191, v117, v111);
                sub_10034A084(&qword_10060E550, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v119 = v116;
                v120 = sub_1004BBD84();
                v121 = *(v114 + 8);
                v121(v118, v111);
                sub_100007214(v199, &qword_10060DEF0, &qword_1004E1420);
                sub_100007214(v200, &qword_10060DEF0, &qword_1004E1420);
                v121(v119, v111);
                sub_100007214(v113, &qword_10060DEF0, &qword_1004E1420);
                if (v120)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v241) = 0;
                  sub_1004B85B4();
                }

                goto LABEL_47;
              }

              sub_100007214(v199, &qword_10060DEF0, &qword_1004E1420);
              sub_100007214(v200, &qword_10060DEF0, &qword_1004E1420);
              (*(v114 + 8))(v116, v111);
            }

            sub_100007214(v113, &qword_10060E520, &qword_1004E1BC0);
            goto LABEL_44;
          }

          sub_100007214(v109, &qword_10060DEE8, &qword_1004E1418);
        }

        v110 = v200;
        v111 = v198;
        (*(v106 + 56))(v200, 1, 1, v198);
        goto LABEL_38;
      }
    }
  }
}

double sub_10032D4CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return result;
}

double sub_10032D544(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return result;
}

uint64_t sub_10032D5C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1004BBA84();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v6, v9, v3);

  sub_1004B85B4();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_10032D780()
{
  v0 = sub_1004BB794();
  v29 = *(v0 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100003ABC(&qword_10060DF00, &qword_1004E1550);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = sub_1004BBA84();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DEE8, &qword_1004E1418);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_100003ABC(&qword_10060DF08, &qword_1004E1558);
  __chkstk_darwin();
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  __chkstk_darwin();
  v14 = &v26 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004BB854();
  (*(v5 + 8))(v7, v4);
  v15 = sub_1004BB844();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_100007214(v9, &qword_10060DEE8, &qword_1004E1418);
    v17 = v29;
    (*(v29 + 56))(v14, 1, 1, v0);
  }

  else
  {
    sub_1004BB814();
    (*(v16 + 8))(v9, v15);
    v17 = v29;
  }

  (*(v17 + 104))(v12, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v17 + 56))(v12, 0, 1, v0);
  v18 = *(v30 + 48);
  sub_10000F778(v14, v3, &qword_10060DF08, &qword_1004E1558);
  sub_10000F778(v12, &v3[v18], &qword_10060DF08, &qword_1004E1558);
  v19 = *(v17 + 48);
  if (v19(v3, 1, v0) != 1)
  {
    v21 = v28;
    sub_10000F778(v3, v28, &qword_10060DF08, &qword_1004E1558);
    if (v19(&v3[v18], 1, v0) != 1)
    {
      v22 = v27;
      (*(v17 + 32))(v27, &v3[v18], v0);
      sub_10034A084(&unk_10060DF10, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
      v23 = v21;
      v20 = sub_1004BBD84();
      v24 = *(v17 + 8);
      v24(v22, v0);
      sub_100007214(v12, &qword_10060DF08, &qword_1004E1558);
      sub_100007214(v14, &qword_10060DF08, &qword_1004E1558);
      v24(v23, v0);
      sub_100007214(v3, &qword_10060DF08, &qword_1004E1558);
      return v20 & 1;
    }

    sub_100007214(v12, &qword_10060DF08, &qword_1004E1558);
    sub_100007214(v14, &qword_10060DF08, &qword_1004E1558);
    (*(v17 + 8))(v21, v0);
    goto LABEL_9;
  }

  sub_100007214(v12, &qword_10060DF08, &qword_1004E1558);
  sub_100007214(v14, &qword_10060DF08, &qword_1004E1558);
  if (v19(&v3[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_100007214(v3, &qword_10060DF00, &qword_1004E1550);
    v20 = 0;
    return v20 & 1;
  }

  sub_100007214(v3, &qword_10060DF08, &qword_1004E1558);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_10032DDBC()
{
  v0 = sub_1004BBA84();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v6[15] == 1 && (sub_10032E4DC() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v4 = sub_1004BB924();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_10032DF34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    sub_1002CBD78(v1);
  }

  return v1;
}

uint64_t sub_10032E098()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  sub_1004BBDF4();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v6 = *(v13 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v7 = *(v13 + 16);

  if (v7 == 1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1004BBDE4();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_1004BBDD4(v14);
    v13 = v6;
    sub_1004BBDB4();
    v8._countAndFlagsBits = 0xD000000000000012;
    v8._object = 0x8000000100508EE0;
  }

  else
  {
    sub_1004BBDE4();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_1004BBDD4(v15);
    v13 = v7;
    sub_1004BBDB4();
    if (v6)
    {
      v16._countAndFlagsBits = 0x2064656E696F6A20;
      v16._object = 0xAC00000020A280E2;
      sub_1004BBDD4(v16);
      v13 = v6;
      sub_1004BBDB4();
      v8._countAndFlagsBits = 0x676E69646E657020;
      v8._object = 0xE800000000000000;
    }

    else
    {
      v8._object = 0x8000000100508EC0;
      v8._countAndFlagsBits = 0xD000000000000011;
    }
  }

  sub_1004BBDD4(v8);
  sub_1004BBE04();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v10 = qword_100618C60;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v1 + 8))(v5, v0);
  return v9;
}

uint64_t sub_10032E4DC()
{
  v0 = sub_1004BBA84();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DEE8, &qword_1004E1418);
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = sub_1004B6CD4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v19 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004BB854();
  (*(v1 + 8))(v3, v0);
  v12 = sub_1004BB844();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_100007214(v5, &qword_10060DEE8, &qword_1004E1418);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  else
  {
    sub_1004BB834();
    (*(v13 + 8))(v5, v12);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v15 = v19;
      (*(v9 + 32))(v19, v7, v8);
      v16 = v20;
      sub_1004B6CC4();
      v14 = sub_1004B6C44();
      v17 = *(v9 + 8);
      v17(v16, v8);
      v17(v15, v8);
      return v14 & 1;
    }
  }

  sub_100007214(v7, &qword_10060DEF0, &qword_1004E1420);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_10032E8AC()
{
  v1 = v0;
  sub_1004BBDF4();
  __chkstk_darwin();
  v60 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004B6F34();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B67C4();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin();
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BBE14();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin();
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v58 - v10;
  v11 = sub_1004BBA84();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v58 - v14;
  __chkstk_darwin();
  v16 = &v58 - v15;
  sub_100003ABC(&qword_10060DEE8, &qword_1004E1418);
  __chkstk_darwin();
  v18 = &v58 - v17;
  sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  __chkstk_darwin();
  v20 = &v58 - v19;
  v21 = sub_1004B6CD4();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v67 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v58 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v1;
  sub_1004B85A4();

  sub_1004BB854();
  v25 = *(v12 + 8);
  v74 = v11;
  v25(v16, v11);
  v26 = sub_1004BB844();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    sub_100007214(v18, &qword_10060DEE8, &qword_1004E1418);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_100007214(v20, &qword_10060DEF0, &qword_1004E1420);
    return 0;
  }

  sub_1004BB834();
  (*(v27 + 8))(v18, v26);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v29 = *(v22 + 32);
  v58 = v21;
  v29(v76, v20, v21);
  v30 = v22;
  if (sub_10032E4DC() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v31 = v61, sub_1004B85A4(), , , v32 = sub_1004BB924(), v25(v31, v74), v32 != 2) && (v32)
  {
    v33 = v64;
    sub_1004BBDA4();
    v35 = v65;
    v34 = v66;
    (*(v65 + 16))(v62, v33, v66);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v36 = qword_100618C60;
    sub_1004B6DF4();
    v37 = sub_1004BBED4();
    (*(v35 + 8))(v33, v34);
    (*(v30 + 8))(v76, v58);
  }

  else
  {
    v38 = v68;
    sub_1004B6EC4();
    sub_100003ABC(&qword_10060DEF8, &qword_1004E1428);
    v39 = sub_1004B6F24();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1004C50A0;
    (*(v40 + 104))(v42 + v41, enum case for Calendar.Component.day(_:), v39);
    sub_1002C6C58(v42);
    swift_setDeallocating();
    (*(v40 + 8))(v42 + v41, v39);
    swift_deallocClassInstance();
    v43 = v67;
    sub_1004B6CC4();
    v44 = v71;
    v45 = v76;
    sub_1004B6EB4();

    v46 = *(v30 + 8);
    v47 = v58;
    v46(v43, v58);
    (*(v69 + 8))(v38, v70);
    v48 = sub_1004B6794();
    if (v49)
    {
      (*(v72 + 8))(v44, v73);
      v46(v45, v47);
      return 0;
    }

    v50 = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v59;
    sub_1004B85A4();

    v52 = sub_1004BB924();
    v25(v51, v74);
    if (v52 == 2 || (v52 & 1) == 0)
    {
      sub_1004BBDE4();
      v79._object = 0x8000000100508DC0;
      v79._countAndFlagsBits = 0xD000000000000010;
      sub_1004BBDD4(v79);
      v77 = v50;
      sub_1004BBDB4();
      v53._countAndFlagsBits = 0x2E29732879616420;
      v53._object = 0xE800000000000000;
    }

    else
    {
      sub_1004BBDE4();
      v78._object = 0x8000000100508DC0;
      v78._countAndFlagsBits = 0xD000000000000010;
      sub_1004BBDD4(v78);
      v77 = v50;
      sub_1004BBDB4();
      v53._countAndFlagsBits = 0xD00000000000006CLL;
      v53._object = 0x8000000100508DE0;
    }

    sub_1004BBDD4(v53);
    v54 = v64;
    sub_1004BBE04();
    v56 = v65;
    v55 = v66;
    (*(v65 + 16))(v62, v54, v66);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v57 = qword_100618C60;
    sub_1004B6DF4();
    v37 = sub_1004BBED4();
    (*(v56 + 8))(v54, v55);
    (*(v72 + 8))(v44, v73);
    v46(v45, v58);
  }

  return v37;
}

uint64_t sub_10032F420@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004BBA84();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DEE8, &qword_1004E1418);
  __chkstk_darwin();
  v7 = &v14 - v6;
  if (sub_10032E4DC())
  {
    v8 = sub_1004B6B04();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    sub_1004BB854();
    (*(v3 + 8))(v5, v2);
    v11 = sub_1004BB844();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_100007214(v7, &qword_10060DEE8, &qword_1004E1418);
      v13 = sub_1004B6B04();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    else
    {
      sub_1004BB7E4();
      return (*(v12 + 8))(v7, v11);
    }
  }
}

uint64_t sub_10032F6D4@<X0>(uint64_t a1@<X8>)
{
  sub_100003ABC(&qword_10060D318, &qword_1004E08F0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_10000F778(v1 + v7, v6, &qword_10060D318, &qword_1004E08F0);
  v8 = sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_100025B04(v6, a1, &qword_10060EF20, &qword_1004D9F00);
  }

  sub_100007214(v6, &qword_10060D318, &qword_1004E08F0);
  sub_10032F8E4(a1);
  sub_10000F778(a1, v4, &qword_10060EF20, &qword_1004D9F00);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_100047A5C(v4, v1 + v7, &qword_10060D318, &qword_1004E08F0);
  return swift_endAccess();
}

uint64_t sub_10032F8E4@<X0>(uint64_t a2@<X8>)
{
  v19 = a2;
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_1004BBA84();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BB6C4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004BBA64();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_100007214(v3, &unk_10060EBE0, &unk_1004DBE60);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_1004BB5B4();
    (*(v9 + 8))(v11, v8);
    v17 = sub_1004BB634();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_10032FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = sub_1004BBA84();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10032FCFC, 0, 0);
}

uint64_t sub_10032FCFC()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10032FE04;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

uint64_t sub_10032FE04()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100350884;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_10032FFC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10032FFC0()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004BBA84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100330100, 0, 0);
}

uint64_t sub_100330100()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100330204;
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

uint64_t sub_100330204()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100330400;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100330398;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100330398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330400()
{
  v0[10] = *(v0[2] + 16);
  sub_1004BC474();

  v0[11] = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_1003304A8, v2, v1);
}

uint64_t sub_1003304A8()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1, v2);

  return _swift_task_switch(sub_100330524, 0, 0);
}

uint64_t sub_100330524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004BBA84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1004B6B04();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003306B0, 0, 0);
}

uint64_t sub_1003306B0()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1003307B8;
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

uint64_t sub_1003307B8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_1003309C8;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_10033095C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033095C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003309C8()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  sub_1004B85B4();
  *(v0 + 96) = *(v1 + 16);
  sub_1004BC474();

  *(v0 + 104) = sub_1004BC464();
  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_100330ABC, v3, v2);
}

uint64_t sub_100330ABC()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1, v2);

  return _swift_task_switch(sub_100330B38, 0, 0);
}

uint64_t sub_100330B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330BAC(uint64_t a1)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v3 = v17 - v2;
  sub_100003ABC(&unk_10060DB30, &qword_1004DD160);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = sub_1004BB7D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v17 - v10;
  sub_10000F778(a1, v5, &unk_10060DB30, &qword_1004DD160);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100007214(v5, &unk_10060DB30, &qword_1004DD160);
    result = sub_1004BD624();
    __break(1u);
  }

  else
  {
    v12 = *(v7 + 32);
    v12(v11, v5, v6);
    v13 = sub_1004BC4B4();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    (*(v7 + 16))(v9, v11, v6);
    v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v17[1];
    v12(&v15[v14], v9, v6);

    sub_1002E0EEC(0, 0, v3, &unk_1004E1410, v15);

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_100330EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1004BBA84();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100330FBC, 0, 0);
}

uint64_t sub_100330FBC()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1003310C4;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

uint64_t sub_1003310C4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_1003312C0;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100331258;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100331258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003312C0()
{
  v0[11] = *(v0[2] + 16);
  sub_1004BC474();

  v0[12] = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_100331368, v2, v1);
}

uint64_t sub_100331368()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1, v2);

  return _swift_task_switch(sub_1003313E4, 0, 0);
}

uint64_t sub_1003313E4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100331454(uint64_t a1, int a2)
{
  v19 = a1;
  v21 = a2;
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v20 = &v18 - v3;
  v4 = sub_1004BB7D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = *(v5 + 16);
  v11(v7, a1, v4, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_1004B8594();
  sub_100348A00(v10, v7);
  (*(v5 + 8))(v10, v4);
  v12(v22, 0);

  v13 = sub_1004BC4B4();
  v14 = v20;
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);
  (v11)(v10, v19, v4);
  v15 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v18;
  *(v16 + 40) = v21 & 1;
  (*(v5 + 32))(v16 + v15, v10, v4);

  sub_1002E0EEC(0, 0, v14, &unk_1004E13E8, v16);

  return result;
}

uint64_t sub_100331728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_1004BB7D4();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_1004BBA84();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100331888, 0, 0);
}

uint64_t sub_100331888()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100331998;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

uint64_t sub_100331998()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100331B84, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100331B84()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_1004BC4B4();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  sub_1004BC474();

  v8 = sub_1004BC464();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_1002E1500(0, 0, v1, &unk_1004E13F8, v10);

  v0[15] = *(v6 + 16);

  v0[16] = sub_1004BC464();
  v12 = sub_1004BC3E4();

  return _swift_task_switch(sub_100331D44, v12, v11);
}

uint64_t sub_100331D44()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1, v2);

  return _swift_task_switch(sub_100331DC0, 0, 0);
}

uint64_t sub_100331DC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100331E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_1004BC474();
  v5[9] = sub_1004BC464();
  v7 = sub_1004BC3E4();

  return _swift_task_switch(sub_100331ED8, v7, v6);
}

uint64_t sub_100331ED8()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_1004B8594();
  sub_100347BA0(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = sub_100003ABC(&qword_10060D2B8, &qword_1004E08D0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = sub_100003ABC(&qword_10060D2D0, &qword_1004E08D8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = sub_100003ABC(&qword_10060D2E0, &unk_1004E08E0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_100007214(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_10060D318, &qword_1004E08F0);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100332244@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = sub_1004B8534();
  *a2 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E80, &qword_1004E2FD0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_100003ABC(&unk_10060D340, &qword_1004D9F70);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E90, &qword_1004D9FA8);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  sub_100003ABC(&qword_10060D350, &qword_1004E09A0);
  sub_1004BA414();
  *(a2 + v7) = v14;
  v8 = a2 + v3[9];
  sub_1004BA414();
  *v8 = v14;
  *(v8 + 1) = *(&v14 + 1);
  v9 = a2 + v3[10];
  sub_1004BA414();
  *v9 = v14;
  *(v9 + 1) = *(&v14 + 1);
  v10 = a2 + v3[11];
  sub_1004BA414();
  *v10 = v14;
  *(v10 + 1) = *(&v14 + 1);
  v11 = a2 + v3[12];
  sub_1004BA414();
  *v11 = v14;
  *(v11 + 1) = *(&v14 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10034A084(&qword_10060D358, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
  result = sub_1004B8B74();
  *a2 = result;
  a2[1] = v13;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet(uint64_t a1)
{
  sub_100003ABC(&qword_10060D350, &qword_1004E09A0);
  sub_1004BA414();
  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10034A084(&qword_10060D358, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);

  return sub_1004B8B74();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v22 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin();
  v4 = sub_100003ABC(&qword_10060D360, &qword_1004E09A8);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin();
  v7 = v21 - v6;
  v26 = v2;
  v21[1] = sub_100003ABC(&qword_10060D368, &qword_1004E09B0);
  v8 = sub_100003B68(&qword_10060D370, &qword_1004E09B8);
  v9 = sub_100003B68(&qword_10060D378, &qword_1004E09C0);
  v10 = sub_100003B68(&qword_10060D380, &qword_1004E09C8);
  v11 = sub_1004B95B4();
  v12 = sub_100349E64();
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_100003B68(&qword_10060D3B0, &qword_1004E09E0);
  v15 = sub_1000206D4(&qword_10060D3B8, &qword_10060D3B0, &qword_1004E09E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v14;
  v28 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v27 = v8;
  v28 = v9;
  v29 = OpaqueTypeConformance2;
  v30 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1004B8D74();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_10034BD68(v2, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_10034BDD4(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for Collaboration.Management.View);
  sub_1000206D4(&unk_10060D3C0, &qword_10060D360, &qword_1004E09A8, &protocol conformance descriptor for NavigationStack<A, B>);
  v19 = v23;
  sub_1004BA144();

  return (*(v24 + 8))(v7, v19);
}

uint64_t sub_100332968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1004B95B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060D380, &qword_1004E09C8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v24 = sub_100003ABC(&qword_10060D370, &qword_1004E09B8);
  v10 = *(v24 - 8);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v23 = a1;
  v26 = a1;
  sub_100003ABC(&qword_10060E058, &qword_1004E1720);
  sub_1000206D4(&qword_10060E060, &qword_10060E058, &qword_1004E1720, &protocol conformance descriptor for TupleView<A>);
  sub_1004B9B64();
  KeyPath = swift_getKeyPath();
  if (qword_100609C40 != -1)
  {
    v21 = KeyPath;
    swift_once();
    KeyPath = v21;
  }

  v14 = qword_10060D1F8;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  sub_1004B95A4();
  v16 = sub_100349E64();
  sub_1004BA1A4();
  (*(v4 + 8))(v6, v3);
  sub_100007214(v9, &qword_10060D380, &qword_1004E09C8);
  __chkstk_darwin();
  *(&v22 - 2) = v23;
  sub_100003ABC(&qword_10060D378, &qword_1004E09C0);
  v27 = v7;
  v28 = v3;
  v29 = v16;
  v30 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v17 = sub_100003B68(&qword_10060D3B0, &qword_1004E09E0);
  v18 = sub_1000206D4(&qword_10060D3B8, &qword_10060D3B0, &qword_1004E09E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v24;
  sub_1004BA114();
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_100332D68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v152 = a2;
  v150 = sub_100003ABC(&qword_10060E078, &qword_1004E1760);
  v149 = *(v150 - 8);
  __chkstk_darwin();
  v115 = &v114 - v3;
  v146 = sub_1004BBA84();
  v145 = *(v146 - 8);
  __chkstk_darwin();
  v144 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060E080, &qword_1004E1768);
  __chkstk_darwin();
  v151 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v114 - v6;
  v7 = sub_100003ABC(&qword_10060E088, &qword_1004E1770);
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin();
  v123 = &v114 - v8;
  v122 = sub_100003ABC(&qword_10060E090, &qword_1004E1778);
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v135 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v114 - v10;
  v119 = sub_100003ABC(&qword_10060E098, &qword_1004E1780);
  v118 = *(v119 - 8);
  __chkstk_darwin();
  v116 = &v114 - v11;
  sub_100003ABC(&qword_10060E0A0, &qword_1004E1788);
  __chkstk_darwin();
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v114 - v13;
  sub_1004B6E64();
  __chkstk_darwin();
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1004BBE14();
  v124 = *(v126 - 8);
  __chkstk_darwin();
  v153 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v114 - v16;
  v132 = sub_100003ABC(&qword_10060E0A8, &qword_1004E1790);
  v130 = *(v132 - 8);
  __chkstk_darwin();
  v128 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v114 - v18;
  v131 = sub_1004BB7D4();
  v129 = *(v131 - 8);
  __chkstk_darwin();
  v117 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v114 - v20;
  sub_100003ABC(&qword_10060E0B0, &qword_1004E1798);
  __chkstk_darwin();
  v147 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v114 - v22;
  v140 = sub_1004B8704();
  v23 = *(v140 - 8);
  __chkstk_darwin();
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_100003ABC(&qword_10060E0B8, &qword_1004E17A0);
  __chkstk_darwin();
  v27 = &v114 - v26;
  v138 = sub_100003ABC(&qword_10060E0C0, &qword_1004E17A8);
  v139 = *(v138 - 8);
  __chkstk_darwin();
  v29 = &v114 - v28;
  v143 = sub_100003ABC(&qword_10060E0C8, &qword_1004E17B0);
  v142 = *(v143 - 8);
  __chkstk_darwin();
  v141 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v114 - v31;
  v158 = a1;
  v160 = a1;
  sub_100336DB8(a1, v27);
  v137 = sub_100003ABC(&qword_10060E0D0, &qword_1004E17B8);
  v33 = sub_100003B68(&qword_10060E0D8, &qword_1004E17C0);
  v34 = sub_100003B68(&qword_10060E0E0, &qword_1004E17C8);
  v35 = sub_10034E114();
  v36 = sub_10034E1F8(&qword_10060E110, &qword_10060E0E0, &qword_1004E17C8, sub_10034E274);
  v161 = v33;
  v162 = v34;
  v163 = v35;
  v164 = v36;
  swift_getOpaqueTypeConformance2();
  sub_10034E3B8();
  sub_1004BA6A4();
  v37 = v140;
  (*(v23 + 104))(v25, enum case for Prominence.increased(_:), v140);
  sub_10034E468();
  v157 = v32;
  v38 = v138;
  sub_1004B9F34();
  v39 = v25;
  v40 = v159;
  (*(v23 + 8))(v39, v37);
  (*(v139 + 8))(v29, v38);
  v41 = *(v158 + 8);
  v42 = sub_10032D780();
  v44 = v155;
  v43 = v156;
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (!*(v161 + 16))
  {

    v40 = v159;
    v44 = v155;
    v43 = v156;
LABEL_9:
    (*(v44 + 56))(v40, 1, 1, v43);
    v65 = v148;
    v66 = v154;
    goto LABEL_11;
  }

  v45 = v129;
  v46 = v117;
  v47 = v131;
  (*(v129 + 16))(v117, v161 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v131);

  (*(v45 + 32))(v127, v46, v47);
  __chkstk_darwin();
  v48 = v154;
  sub_1004BBDA4();
  v49 = v124;
  v50 = v126;
  (*(v124 + 16))(v153, v48, v126);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v51 = qword_100618C60;
  sub_1004B6DF4();
  v52 = sub_1004BBED4();
  v54 = v53;
  (*(v49 + 8))(v48, v50);
  v161 = v52;
  v162 = v54;
  sub_1002C4D1C();
  v161 = sub_1004B9D84();
  v162 = v55;
  LOBYTE(v163) = v56 & 1;
  v164 = v57;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_1004E10F0);
  sub_1004BA6A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v140 = v41;
  if (v161 == 1)
  {
    __chkstk_darwin();
    sub_100003ABC(&qword_10060E1C0, &qword_1004E1830);
    v58 = sub_100003B68(&qword_10060E1C8, &qword_1004E1838);
    v59 = sub_100003B68(&qword_10060E1D0, &qword_1004E1840);
    v60 = sub_1004B9594();
    v61 = sub_1000206D4(&qword_10060E1D8, &qword_10060E1D0, &qword_1004E1840, &protocol conformance descriptor for Button<A>);
    v62 = sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v161 = v59;
    v162 = v60;
    v163 = v61;
    v164 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v161 = v58;
    v162 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v64 = v116;
    sub_1004BA6C4();
    v70 = v118;
    v68 = v133;
    v69 = v119;
    (*(v118 + 32))(v133, v64, v119);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v68 = v133;
    v69 = v119;
    v70 = v118;
  }

  (*(v70 + 56))(v68, v67, 1, v69);
  __chkstk_darwin();
  sub_10033BF6C(&v161);
  sub_100003ABC(&qword_10060E1A8, &qword_1004E1820);
  sub_10034E5C8();
  v71 = v134;
  sub_1004BA6A4();
  v72 = *(v130 + 16);
  v73 = v128;
  v74 = v132;
  v72(v128, v136, v132);
  v75 = v68;
  v76 = v120;
  sub_10000F778(v75, v120, &qword_10060E0A0, &qword_1004E1788);
  v77 = v121;
  v78 = *(v121 + 16);
  v79 = v122;
  v78(v135, v71, v122);
  v80 = v123;
  v72(v123, v73, v74);
  v81 = sub_100003ABC(&qword_10060E1B8, &qword_1004E1828);
  sub_10000F778(v76, v80 + *(v81 + 48), &qword_10060E0A0, &qword_1004E1788);
  v82 = v135;
  v78((v80 + *(v81 + 64)), v135, v79);
  v83 = *(v77 + 8);
  v83(v134, v79);
  sub_100007214(v133, &qword_10060E0A0, &qword_1004E1788);
  v84 = *(v130 + 8);
  v85 = v132;
  v84(v136, v132);
  v83(v82, v79);
  sub_100007214(v76, &qword_10060E0A0, &qword_1004E1788);
  v84(v128, v85);
  v40 = v159;
  sub_100025B04(v80, v159, &qword_10060E088, &qword_1004E1770);
  (*(v155 + 56))(v40, 0, 1, v156);
  (*(v129 + 8))(v127, v131);
  v66 = v154;
  v65 = v148;
LABEL_11:
  v86 = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v144;
  sub_1004B85A4();

  v88 = sub_1004BB924();
  (*(v145 + 8))(v87, v146);
  if (v88 != 2 && (v88 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_1004B85A4(), , , v161 == 1))
  {
    __chkstk_darwin();
    sub_1004BBDA4();
    v89 = v124;
    v90 = v126;
    (*(v124 + 16))(v86, v66, v126);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v91 = qword_100618C60;
    sub_1004B6DF4();
    v92 = sub_1004BBED4();
    v94 = v93;
    (*(v89 + 8))(v66, v90);
    v161 = v92;
    v162 = v94;
    sub_1002C4D1C();
    v165 = sub_1004B9D84();
    v166 = v95;
    v167 = v96 & 1;
    v168 = v97;
    sub_10033C8B4(&v161);
    sub_100003ABC(&unk_10060E170, &qword_1004E1808);
    sub_100003ABC(&qword_10060C328, &unk_1004E1810);
    sub_1000206D4(&unk_10060E180, &unk_10060E170, &qword_1004E1808, &protocol conformance descriptor for HStack<A>);
    sub_100307870();
    v98 = v115;
    sub_1004BA6B4();
    v99 = v149;
    v100 = v98;
    v101 = v150;
    (*(v149 + 32))(v65, v100, v150);
    v102 = v101;
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v102 = v150;
    v99 = v149;
  }

  (*(v99 + 56))(v65, v103, 1, v102);
  v104 = v142;
  v105 = *(v142 + 16);
  v106 = v141;
  v107 = v143;
  v105(v141, v157, v143);
  v108 = v147;
  sub_10000F778(v40, v147, &qword_10060E0B0, &qword_1004E1798);
  v109 = v151;
  sub_10000F778(v65, v151, &qword_10060E080, &qword_1004E1768);
  v110 = v152;
  v105(v152, v106, v107);
  v111 = sub_100003ABC(&qword_10060E168, &qword_1004E1800);
  sub_10000F778(v108, &v110[*(v111 + 48)], &qword_10060E0B0, &qword_1004E1798);
  sub_10000F778(v109, &v110[*(v111 + 64)], &qword_10060E080, &qword_1004E1768);
  sub_100007214(v65, &qword_10060E080, &qword_1004E1768);
  sub_100007214(v159, &qword_10060E0B0, &qword_1004E1798);
  v112 = *(v104 + 8);
  v112(v157, v107);
  sub_100007214(v109, &qword_10060E080, &qword_1004E1768);
  sub_100007214(v108, &qword_10060E0B0, &qword_1004E1798);
  return (v112)(v106, v107);
}

uint64_t sub_1003344B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100003ABC(&qword_10060E158, &qword_1004E17F8);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - v4;
  v59 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin();
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_10060E1A8, &qword_1004E1820);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v58 - v8;
  v9 = sub_1004B9754();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003ABC(&qword_10060E388, &qword_1004E1A48);
  __chkstk_darwin();
  v15 = &v58 - v14;
  v16 = sub_100003ABC(&qword_10060E390, &qword_1004E1A50);
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin();
  v66 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = a1;
  if (sub_10032D780())
  {
    v21 = v70;
    v22 = *(v69 + 56);
    v23 = v71;

    return v22(v23, 1, 1, v21);
  }

  else
  {
    *v15 = sub_1004B9204();
    *(v15 + 1) = 0x4028000000000000;
    v15[16] = 0;
    v25 = sub_100003ABC(&qword_10060E398, &qword_1004E1A58);
    sub_100334C68(a1, &v15[*(v25 + 44)]);
    v26 = sub_1004B9954();
    sub_1004B86C4();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v15[*(sub_100003ABC(&qword_10060E3A0, &qword_1004E1A60) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = &v15[*(sub_100003ABC(&qword_10060E3A8, &qword_1004E1A68) + 36)];
    v36[32] = 0;
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v37 = sub_1004B9334();
    v38 = &v15[*(v13 + 36)];
    *v38 = v37;
    v38[1] = sub_100336D90;
    v38[2] = 0;
    sub_1004B9744();
    sub_10034F2B4();
    v58 = v19;
    sub_1004B9FF4();
    (*(v10 + 8))(v12, v9);
    sub_100007214(v15, &qword_10060E388, &qword_1004E1A48);
    v72 = sub_10032DF34();
    v39 = v20;
    v40 = v60;
    sub_10034BD68(v39, v60, type metadata accessor for Collaboration.Management.View);
    v41 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v42 = swift_allocObject();
    sub_10034BDD4(v40, v42 + v41, type metadata accessor for Collaboration.Management.View);
    sub_100003ABC(&qword_10060D2A0, &qword_1004E08C0);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_1000206D4(&qword_10060E208, &qword_10060D2A0, &qword_1004E08C0, &protocol conformance descriptor for [A]);
    sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_1004E10F0);
    sub_10034A084(&qword_10060E210, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v43 = v67;
    sub_1004BA664();
    v45 = v61;
    v44 = v62;
    v46 = *(v61 + 16);
    v47 = v66;
    v46(v66, v58, v62);
    v49 = v63;
    v48 = v64;
    v50 = *(v64 + 16);
    v51 = v43;
    v52 = v65;
    v50(v63, v51, v65);
    v46(v68, v47, v44);
    v53 = sub_100003ABC(&qword_10060E3D8, &qword_1004E1A78);
    v54 = v68;
    v50(&v68[*(v53 + 48)], v49, v52);
    v55 = *(v48 + 8);
    v55(v67, v52);
    v56 = *(v45 + 8);
    v56(v58, v44);
    v55(v49, v52);
    v56(v66, v44);
    v57 = v71;
    sub_100025B04(v54, v71, &qword_10060E158, &qword_1004E17F8);
    return (*(v69 + 56))(v57, 0, 1, v70);
  }
}

uint64_t sub_100334C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = sub_100003ABC(&qword_10060E3E0, &qword_1004E1A80);
  v158 = *(v3 - 8);
  v159 = v3;
  __chkstk_darwin();
  v153 = (&v129 - v4);
  v152 = sub_100003ABC(&qword_10060DE78, &qword_1004E1378);
  __chkstk_darwin();
  v144 = &v129 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v137 = *(v6 - 8);
  __chkstk_darwin();
  v138 = v7;
  v139 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100003ABC(&qword_10060E3E8, &qword_1004E1A88);
  __chkstk_darwin();
  v140 = &v129 - v8;
  v136 = sub_100003ABC(&qword_10060E3F0, &qword_1004E1A90);
  __chkstk_darwin();
  v142 = &v129 - v9;
  v149 = sub_100003ABC(&qword_10060E3F8, &qword_1004E1A98);
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v143 = &v129 - v10;
  v11 = sub_100003ABC(&qword_10060E400, &qword_1004E1AA0);
  v150 = *(v11 - 8);
  v151 = v11;
  __chkstk_darwin();
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v129 - v13;
  sub_1004B6E64();
  __chkstk_darwin();
  v133 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004BBE14();
  v134 = *(v15 - 8);
  v135 = v15;
  __chkstk_darwin();
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v129 - v18;
  v19 = sub_1004BBA84();
  v130 = *(v19 - 8);
  v131 = v19;
  __chkstk_darwin();
  v129 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060E408, &qword_1004E1AA8);
  __chkstk_darwin();
  v157 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v129 - v22;
  v155 = sub_100003ABC(&qword_10060E410, &qword_1004E1AB0);
  v23 = *(v155 - 8);
  __chkstk_darwin();
  v25 = &v129 - v24;
  v26 = sub_1004B8C94();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v129 - v30;
  sub_100003ABC(&qword_10060E418, &qword_1004E1AB8);
  __chkstk_darwin();
  v156 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = a1;
  v163 = &v129 - v33;
  v145 = v6;
  sub_100308A40(v31);
  if (qword_100609C98 != -1)
  {
    swift_once();
  }

  v34 = sub_100007084(v26, qword_10060D250);
  (*(v27 + 16))(v29, v34, v26);
  sub_10034A084(&qword_10060AC48, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v35 = sub_1004BBD54();
  v36 = *(v27 + 8);
  v36(v29, v26);
  v36(v31, v26);
  if (v35)
  {
    (*(v23 + 56))(v163, 1, 1, v155);
    v37 = v17;
  }

  else
  {
    v38 = sub_1004BA324();
    v37 = v17;
    if (qword_100609C38 != -1)
    {
      swift_once();
    }

    v39 = qword_10060D1F0;
    KeyPath = swift_getKeyPath();
    v41 = qword_100609C88;

    if (v41 != -1)
    {
      swift_once();
    }

    sub_1004BA754();
    sub_1004B8994();
    v42 = &v25[*(sub_100003ABC(&qword_10060E420, &qword_1004E1AC0) + 36)];
    v43 = *(sub_100003ABC(&qword_10060E428, &qword_1004E1AC8) + 28);
    sub_1004B9374();
    v44 = sub_1004B9384();
    (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    *v25 = v38;
    *(v25 + 1) = KeyPath;
    *(v25 + 2) = v39;
    *(v25 + 56) = *&v168[16];
    v45 = v167;
    *(v25 + 40) = *v168;
    *(v25 + 24) = v45;
    if (qword_100609C90 != -1)
    {
      swift_once();
    }

    v46 = qword_10060D248;
    v47 = swift_getKeyPath();
    v48 = v155;
    v49 = &v25[*(v155 + 36)];
    *v49 = v47;
    v49[1] = v46;
    v50 = v163;
    sub_100025B04(v25, v163, &qword_10060E410, &qword_1004E1AB0);
    (*(v23 + 56))(v50, 0, 1, v48);
  }

  v155 = sub_1004B9354();
  v51 = 1;
  LOBYTE(v167) = 1;
  v52 = v162;
  sub_100336078(v162, v171);
  *&v170[7] = v171[0];
  *&v170[23] = v171[1];
  *&v170[39] = v171[2];
  *&v170[55] = v171[3];
  v154 = v167;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v167 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v129;
    sub_1004B85A4();

    v54 = sub_1004BB924();
    (*(v130 + 8))(v53, v131);
    if (v54 == 2 || (v54 & 1) == 0)
    {
      v55 = v132;
    }

    else
    {
      v55 = v132;
    }

    sub_1004BBDA4();
    v57 = v134;
    v56 = v135;
    (*(v134 + 16))(v37, v55, v135);
    v58 = v136;
    v59 = v142;
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v60 = qword_100618C60;
    sub_1004B6DF4();
    v61 = sub_1004BBED4();
    v63 = v62;
    (*(v57 + 8))(v55, v56);
    v136 = v61;
    *&v167 = v61;
    *(&v167 + 1) = v63;
    v64 = v139;
    sub_10034BD68(v52, v139, type metadata accessor for Collaboration.Management.View);
    v65 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v66 = swift_allocObject();
    sub_10034BDD4(v64, v66 + v65, type metadata accessor for Collaboration.Management.View);
    sub_1002C4D1C();

    v67 = v140;
    sub_1004BA4A4();
    v68 = sub_1004B9A34();
    v69 = swift_getKeyPath();
    v70 = (v67 + *(v141 + 36));
    *v70 = v69;
    v70[1] = v68;
    sub_1004B9AA4();
    sub_10034F5F4();
    sub_1004B9DE4();
    sub_100007214(v67, &qword_10060E3E8, &qword_1004E1A88);
    v71 = sub_1004BA2B4();
    v72 = swift_getKeyPath();
    v73 = &v59[*(sub_100003ABC(&qword_10060E448, &qword_1004E1B10) + 36)];
    *v73 = v72;
    v73[1] = v71;
    if (qword_100609C78 != -1)
    {
      swift_once();
    }

    sub_1004BA754();
    sub_1004B8994();
    v74 = &v59[*(sub_100003ABC(&qword_10060E450, &qword_1004E1B18) + 36)];
    v75 = v171[5];
    *v74 = v171[4];
    *(v74 + 1) = v75;
    *(v74 + 2) = v171[6];
    v76 = sub_1004B9954();
    sub_1004B86C4();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = &v59[*(sub_100003ABC(&qword_10060E458, &qword_1004E1B20) + 36)];
    *v85 = v76;
    *(v85 + 1) = v78;
    *(v85 + 2) = v80;
    *(v85 + 3) = v82;
    *(v85 + 4) = v84;
    v85[40] = 0;
    if (qword_100609AC0 != -1)
    {
      swift_once();
    }

    v142 = v63;
    v86 = static UIColor.MusicTint.normal;
    v87 = sub_1004BA304();
    v88 = sub_1004B9964();
    v89 = &v59[*(sub_100003ABC(&qword_10060E460, &qword_1004E1B28) + 36)];
    *v89 = v87;
    v89[8] = v88;
    v90 = &v59[*(v58 + 36)];
    v91 = enum case for RoundedCornerStyle.continuous(_:);
    v92 = sub_1004B92C4();
    (*(*(v92 - 8) + 104))(v90, v91, v92);
    *&v90[*(sub_100003ABC(&qword_10060E468, &unk_1004E1B30) + 36)] = 256;
    v93 = v58;
    v94 = v59;
    if (qword_100609CA0 != -1)
    {
      swift_once();
    }

    v95 = v152;
    v96 = sub_100007084(v152, qword_10060D268);
    v97 = v144;
    sub_10000F778(v96, v144, &qword_10060DE78, &qword_1004E1378);
    v141 = sub_10034F6D8();
    v98 = sub_1000206D4(&qword_10060DEB0, &qword_10060DE78, &qword_1004E1378, &protocol conformance descriptor for PartialRangeThrough<A>);
    v99 = v143;
    sub_1004B9EE4();
    sub_100007214(v97, &qword_10060DE78, &qword_1004E1378);
    sub_100007214(v94, &qword_10060E3F0, &qword_1004E1A90);
    v100 = (v162 + *(v145 + 11));
    v101 = *v100;
    v102 = *(v100 + 1);
    LOBYTE(v164) = v101;
    v165 = v102;
    sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
    sub_1004BA444();
    v145 = &v129;
    __chkstk_darwin();
    v103 = v136;
    *(&v129 - 4) = v104;
    *(&v129 - 3) = v103;
    *(&v129 - 2) = v142;
    *&v167 = v93;
    *(&v167 + 1) = v95;
    *v168 = v141;
    *&v168[8] = v98;
    swift_getOpaqueTypeConformance2();
    v105 = v146;
    v106 = v149;
    sub_1004BA074();

    (*(v147 + 8))(v99, v106);
    v108 = v150;
    v107 = v151;
    v109 = *(v150 + 16);
    v110 = v148;
    v109(v148, v105, v151);
    v111 = v153;
    *v153 = 0;
    *(v111 + 8) = 1;
    v112 = sub_100003ABC(&qword_10060E4B0, &qword_1004E1B40);
    v109((v111 + *(v112 + 48)), v110, v107);
    v113 = *(v108 + 8);
    v113(v105, v107);
    v113(v110, v107);
    sub_100025B04(v111, v161, &qword_10060E3E0, &qword_1004E1A80);
    v51 = 0;
  }

  v114 = v161;
  (*(v158 + 56))(v161, v51, 1, v159);
  v115 = v163;
  v116 = v156;
  sub_10000F778(v163, v156, &qword_10060E418, &qword_1004E1AB8);
  v117 = v157;
  sub_10000F778(v114, v157, &qword_10060E408, &qword_1004E1AA8);
  v118 = v160;
  sub_10000F778(v116, v160, &qword_10060E418, &qword_1004E1AB8);
  v119 = sub_100003ABC(&qword_10060E430, &qword_1004E1B00);
  v120 = v118 + *(v119 + 48);
  v121 = v155;
  v164 = v155;
  v165 = 0;
  v122 = v154;
  v166[0] = v154;
  *&v166[1] = *v170;
  *&v166[17] = *&v170[16];
  *&v166[33] = *&v170[32];
  *&v166[49] = *&v170[48];
  v123 = *&v170[63];
  *&v166[64] = *&v170[63];
  v124 = *v166;
  *v120 = v155;
  *(v120 + 16) = v124;
  v125 = *&v166[16];
  v126 = *&v166[32];
  v127 = *&v166[48];
  *(v120 + 80) = v123;
  *(v120 + 48) = v126;
  *(v120 + 64) = v127;
  *(v120 + 32) = v125;
  sub_10000F778(v117, v118 + *(v119 + 64), &qword_10060E408, &qword_1004E1AA8);
  sub_10000F778(&v164, &v167, &qword_10060E438, &qword_1004E1B08);
  sub_100007214(v114, &qword_10060E408, &qword_1004E1AA8);
  sub_100007214(v115, &qword_10060E418, &qword_1004E1AB8);
  sub_100007214(v117, &qword_10060E408, &qword_1004E1AA8);
  v167 = v121;
  v168[0] = v122;
  *&v168[17] = *&v170[16];
  *&v168[33] = *&v170[32];
  *v169 = *&v170[48];
  *&v169[15] = *&v170[63];
  *&v168[1] = *v170;
  sub_100007214(&v167, &qword_10060E438, &qword_1004E1B08);
  return sub_100007214(v116, &qword_10060E418, &qword_1004E1AB8);
}

double sub_100336078@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  sub_1004B6E64();
  __chkstk_darwin();
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v54[-v7];
  sub_1004BBDA4();
  (*(v4 + 16))(v6, v8, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v9 = qword_100618C60;
  sub_1004B6DF4();
  v10 = sub_1004BBED4();
  v12 = v11;
  (*(v4 + 8))(v8, v3);
  v59 = v10;
  v60 = v12;
  sub_1002C4D1C();
  v13 = sub_1004B9D84();
  v15 = v14;
  v17 = v16;
  LODWORD(v59) = sub_1004B9624();
  v18 = sub_1004B9C84();
  v20 = v19;
  v22 = v21;
  sub_10002FA24(v13, v15, v17 & 1);

  sub_1004B9B14();
  v23 = sub_1004B9CE4();
  v57 = v24;
  v26 = v25;
  v28 = v27;

  sub_10002FA24(v18, v20, v22 & 1);

  v29 = sub_10032E098();
  if (v30)
  {
    v59 = v29;
    v60 = v30;
    v31 = sub_1004B9D84();
    v33 = v32;
    v35 = v34;
    LODWORD(v59) = sub_1004B9654();
    v36 = sub_1004B9C84();
    v38 = v37;
    v55 = v26;
    v40 = v39;
    v58 = v28;
    sub_10002FA24(v31, v33, v35 & 1);

    sub_1004B9B24();
    v41 = sub_1004B9CE4();
    v43 = v42;
    v56 = a2;
    v44 = v23;
    v46 = v45;
    v48 = v47;

    v49 = v40 & 1;
    LOBYTE(v26) = v55;
    sub_10002FA24(v36, v38, v49);
    v28 = v58;

    v50 = v46 & 1;
    v23 = v44;
    a2 = v56;
    sub_10002FA14(v41, v43, v50);
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v50 = 0;
    v48 = 0;
  }

  v51 = v26 & 1;
  v52 = v57;
  sub_10002FA14(v23, v57, v51);

  sub_10034C318(v41, v43, v50, v48);
  sub_10034C3B0(v41, v43, v50, v48);
  LOBYTE(v59) = v51;
  *a2 = v23;
  *(a2 + 8) = v52;
  *(a2 + 16) = v51;
  *(a2 + 24) = v28;
  *(a2 + 32) = v41;
  *(a2 + 40) = v43;
  *(a2 + 48) = v50;
  *(a2 + 56) = v48;
  sub_10034C3B0(v41, v43, v50, v48);
  sub_10002FA24(v23, v52, v51);

  return result;
}

uint64_t sub_1003364FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B80B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v8 = *v7;
  v9 = *(v7 + 1);
  v17[16] = v8;
  v18 = v9;
  v17[15] = 1;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  v10 = sub_1004BA434();
  v12 = Logger.collaboration.unsafeMutableAddressor(v10, v11);
  (*(v4 + 16))(v6, v12, v3);
  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Management] Stop/Leave button tapped", v15, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003366A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v54 = a4;
  v48 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v49 = v5;
  v50 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BA214();
  __chkstk_darwin();
  v53 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = v41 - v7;
  sub_1004B6E64();
  __chkstk_darwin();
  v45 = sub_1004BBE14();
  v8 = *(v45 - 8);
  __chkstk_darwin();
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v41 - v11;
  v13 = sub_1004BBA84();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v17 = sub_1004BB924();
  (*(v14 + 8))(v16, v13);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    sub_1004BBDA4();
    v18 = *(v8 + 16);
    v19 = v45;
    v18(v10, v12, v45);
    if (qword_100609A20 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_1004BBDA4();
  v18 = *(v8 + 16);
  v19 = v45;
  v18(v10, v12, v45);
  if (qword_100609A20 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v20 = qword_100618C60;
  sub_1004B6DF4();
  v21 = v20;
  v44 = sub_1004BBED4();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v12, v19);
  sub_1004BBDA4();
  v18(v10, v12, v19);
  sub_1004B6DF4();
  v25 = sub_1004BBED4();
  v27 = v26;
  v24(v12, v19);
  v55 = v44;
  v56 = v23;
  sub_1002C4D1C();
  v28 = sub_1004B9D84();
  v44 = v29;
  v45 = v28;
  v42 = v30;
  v43 = v31;
  v55 = v25;
  v56 = v27;
  sub_1004B9D84();
  v41[1] = v32;
  v55 = v46;
  v56 = v47;

  v33 = sub_1004B9D84();
  v35 = v34;
  LOBYTE(v23) = v36;
  v37 = v50;
  sub_10034BD68(v51, v50, type metadata accessor for Collaboration.Management.View);
  v38 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v39 = swift_allocObject();
  sub_10034BDD4(v37, v39 + v38, type metadata accessor for Collaboration.Management.View);
  sub_1004BA1E4();
  sub_10002FA24(v33, v35, v23 & 1);

  sub_1004BA1F4();
  return sub_1004BA1D4();
}

uint64_t sub_100336DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *v3;
  v5 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = sub_100003ABC(&qword_10060E0D8, &qword_1004E17C0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *v8 = sub_1004B9344();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = sub_100003ABC(&unk_10060E220, &unk_1004E1880);
  sub_100337084(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(v6 + 36)];
  v10[32] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = (a1 + v3[12]);
  v12 = *v11;
  v13 = *(v11 + 1);
  v18 = v12;
  v19 = v13;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA444();
  sub_10034BD68(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10034BDD4(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for Collaboration.Management.View);
  sub_100003ABC(&qword_10060E0E0, &qword_1004E17C8);
  sub_10034E114();
  sub_10034E1F8(&qword_10060E110, &qword_10060E0E0, &qword_1004E17C8, sub_10034E274);
  sub_1004B9F14();

  return sub_100007214(v8, &qword_10060E0D8, &qword_1004E17C0);
}

uint64_t sub_100337084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v221 = sub_100003ABC(&qword_10060E238, &qword_1004E1898);
  v220 = *(v221 - 8);
  __chkstk_darwin();
  v199 = &v177 - v3;
  sub_100003ABC(&qword_10060E240, &qword_1004E18A0);
  __chkstk_darwin();
  v182 = &v177 - v4;
  v179 = sub_100003ABC(&qword_10060E248, &qword_1004E18A8);
  __chkstk_darwin();
  v191 = &v177 - v5;
  v189 = sub_100003ABC(&qword_10060E250, &qword_1004E18B0);
  __chkstk_darwin();
  v188 = &v177 - v6;
  v186 = sub_100003ABC(&qword_10060E258, &qword_1004E18B8);
  __chkstk_darwin();
  v185 = &v177 - v7;
  v181 = sub_100003ABC(&qword_10060E260, &qword_1004E18C0);
  __chkstk_darwin();
  v184 = &v177 - v8;
  v180 = sub_100003ABC(&qword_10060E268, &qword_1004E18C8);
  __chkstk_darwin();
  v187 = &v177 - v9;
  v183 = sub_100003ABC(&qword_10060E270, &qword_1004E18D0);
  __chkstk_darwin();
  v194 = &v177 - v10;
  v193 = sub_100003ABC(&qword_10060E278, &qword_1004E18D8);
  __chkstk_darwin();
  v198 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v177 - v12;
  __chkstk_darwin();
  v197 = &v177 - v13;
  v178 = sub_100003ABC(&qword_10060E280, &qword_1004E18E0);
  __chkstk_darwin();
  v196 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = (&v177 - v15);
  sub_100003ABC(&qword_10060E288, &qword_1004E18E8);
  __chkstk_darwin();
  v219 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v224 = &v177 - v17;
  v217 = sub_1004BBA84();
  v216 = *(v217 - 8);
  __chkstk_darwin();
  v215 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
  __chkstk_darwin();
  v209 = &v177 - v19;
  v212 = sub_1004BB634();
  v210 = *(v212 - 8);
  __chkstk_darwin();
  v208 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v202 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v177 - v22;
  v213 = sub_1004B7D94();
  v211 = *(v213 - 8);
  __chkstk_darwin();
  v226 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v177 - v24;
  __chkstk_darwin();
  v207 = &v177 - v25;
  __chkstk_darwin();
  v206 = &v177 - v26;
  v27 = sub_1004B7D04();
  v228 = *(v27 - 8);
  __chkstk_darwin();
  v29 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v30 = *(v225 + 8);
  __chkstk_darwin();
  v31 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v177 - v32;
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v200 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v177 - v35;
  __chkstk_darwin();
  v38 = &v177 - v37;
  v214 = sub_100003ABC(&qword_10060E290, &qword_1004E18F0);
  __chkstk_darwin();
  v218 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v223 = &v177 - v40;
  v190 = a1;
  v229 = *(a1 + 8);
  sub_10032F6D4(v38);
  v41 = enum case for Playlist.Variant.regular(_:);
  v42 = sub_1004BB914();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v33, v41, v42);
  (*(v43 + 56))(v33, 0, 1, v42);
  v44 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  (*(*(v44 - 8) + 56))(v33, 0, 11, v44);
  v244 = 1;
  v242 = 1;
  v240 = 1;
  v45 = *(v228 + 104);
  v227 = v29;
  v205 = v27;
  v45(v29, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v27);
  v203 = v33;
  sub_10034BD68(v33, v31, type metadata accessor for ArtworkImage.Placeholder);
  v46 = (v225[80] + 16) & ~v225[80];
  v47 = (v30 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_10034BDD4(v31, v48 + v46, type metadata accessor for ArtworkImage.Placeholder);
  v49 = v48 + v47;
  *v49 = 0;
  *(v49 + 8) = v244;
  *(v49 + 9) = *v243;
  *(v49 + 12) = *&v243[3];
  *(v49 + 16) = 0;
  *(v49 + 24) = v242;
  *(v49 + 25) = *v241;
  *(v49 + 28) = *&v241[3];
  *(v49 + 32) = 0;
  *(v49 + 40) = v240;
  *(v49 + 41) = 2;
  v225 = v38;
  sub_10000F778(v38, v36, &qword_10060EF20, &qword_1004D9F00);
  v50 = type metadata accessor for ArtworkImage.ViewModel(0);
  v51 = *(*(v50 - 8) + 48);
  if (v51(v36, 1, v50) == 1)
  {
    sub_100007214(v36, &qword_10060EF20, &qword_1004D9F00);
    v52 = sub_1004BB6C4();
    v53 = v201;
    (*(*(v52 - 8) + 56))(v201, 1, 1, v52);
  }

  else
  {
    v54 = sub_1004BB6C4();
    v55 = *(v54 - 8);
    v53 = v201;
    (*(v55 + 16))(v201, v36, v54);
    sub_10034C2B8(v36, type metadata accessor for ArtworkImage.ViewModel);
    (*(v55 + 56))(v53, 0, 1, v54);
  }

  sub_10000F778(v53, v202, &unk_10060EBE0, &unk_1004DBE60);
  v56 = v206;
  sub_1004B7D84();
  sub_100007214(v53, &unk_10060EBE0, &unk_1004DBE60);
  sub_1004B7D34();
  v57 = v200;
  sub_10000F778(v225, v200, &qword_10060EF20, &qword_1004D9F00);
  if (v51(v57, 1, v50) == 1)
  {
    sub_100007214(v57, &qword_10060EF20, &qword_1004D9F00);
    v58 = v210;
    v59 = v209;
    v60 = v212;
    (*(v210 + 56))(v209, 1, 1, v212);
    v61 = v223;
  }

  else
  {
    v59 = v209;
    sub_10000F778(v57 + *(v50 + 20), v209, &qword_10060DD10, &qword_1004DEE10);
    sub_10034C2B8(v57, type metadata accessor for ArtworkImage.ViewModel);
    v58 = v210;
    v60 = v212;
    v62 = (*(v210 + 48))(v59, 1, v212);
    v61 = v223;
    if (v62 != 1)
    {
      v63 = v208;
      (*(v58 + 32))(v208, v59, v60);
      goto LABEL_12;
    }
  }

  v63 = v208;
  if (qword_100609C08 != -1)
  {
    swift_once();
  }

  v64 = sub_100007084(v60, static Artwork.CropStyle.fallback);
  (*(v58 + 16))(v63, v64, v60);
  if ((*(v58 + 48))(v59, 1, v60) != 1)
  {
    sub_100007214(v59, &qword_10060DD10, &qword_1004DEE10);
  }

LABEL_12:
  v65 = v204;
  v66 = v226;
  sub_1004B7D14();
  (*(v58 + 8))(v63, v60);
  v67 = *(v211 + 8);
  v68 = v213;
  v67(v66, v213);
  v69 = v207;
  sub_1004B7D44();
  v67(v65, v68);
  sub_100003ABC(&qword_10060C998, &qword_1004DF240);
  sub_1003169C4();
  sub_1004B7D24();

  v67(v69, v68);
  v67(v56, v68);
  (*(v228 + 8))(v227, v205);
  sub_10034C2B8(v203, type metadata accessor for ArtworkImage.Placeholder);
  sub_100007214(v225, &qword_10060EF20, &qword_1004D9F00);
  if (qword_100609C80 != -1)
  {
    swift_once();
  }

  sub_1004BA754();
  sub_1004B8994();
  v70 = (v61 + *(sub_100003ABC(&qword_10060E298, &qword_1004E18F8) + 36));
  v71 = v231;
  *v70 = v230;
  v70[1] = v71;
  v70[2] = v232;
  if (qword_100609BA0 != -1)
  {
    swift_once();
  }

  v72 = static Corner.small;
  v73 = *algn_100618FF8;
  v74 = byte_100619000;
  v75 = v61 + *(sub_100003ABC(&qword_10060E2A0, &qword_1004E1900) + 36);
  *v75 = v72;
  *(v75 + 8) = v73;
  *(v75 + 16) = v74;
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  v76 = static Border.artwork;
  v77 = qword_100619058;
  v78 = byte_100619060;
  v79 = v61 + *(sub_100003ABC(&qword_10060E2A8, &qword_1004E1908) + 36);
  *v79 = v76;
  *(v79 + 8) = v77;
  *(v79 + 16) = v78;
  *(v79 + 24) = v72;
  *(v79 + 32) = v73;
  *(v79 + 40) = v74;

  sub_1004BA284();
  v80 = sub_1004BA2C4();

  v81 = v61 + *(v214 + 36);
  *v81 = v80;
  *(v81 + 8) = xmmword_1004D9BA0;
  *(v81 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v215;
  sub_1004B85A4();

  v83 = sub_1004BB994();
  v85 = v84;
  (*(v216 + 8))(v82, v217);
  *&v233 = v83;
  *(&v233 + 1) = v85;
  sub_1002C4D1C();
  v86 = sub_1004B9D84();
  v88 = v87;
  v90 = v89;
  LODWORD(v233) = sub_1004B9624();
  v91 = sub_1004B9C84();
  v93 = v92;
  v95 = v94;
  sub_10002FA24(v86, v88, v90 & 1);

  if (qword_100609C30 != -1)
  {
    swift_once();
  }

  v96 = sub_1004B9CE4();
  v98 = v97;
  v100 = v99;

  sub_10002FA24(v91, v93, v95 & 1);

  sub_1004B9AA4();
  v227 = sub_1004B9C74();
  v226 = v101;
  LODWORD(v103) = v102;
  v228 = v104;
  sub_10002FA24(v96, v98, v100 & 1);

  v105 = sub_10032DDBC();
  v106 = 1;
  if (v105)
  {
    v107 = sub_1004B91F4();
    v108 = v195;
    *v195 = v107;
    *(v108 + 8) = 0x4020000000000000;
    *(v108 + 16) = 0;
    v109 = sub_100003ABC(&qword_10060E2B8, &qword_1004E1918);
    v110 = v190;
    sub_100338C9C(v190, (v108 + *(v109 + 44)));
    *(v108 + *(sub_100003ABC(&qword_10060E2C0, &qword_1004E1920) + 36)) = 256;
    v111 = sub_1004B9974();
    if (qword_100609C68 != -1)
    {
      swift_once();
    }

    LODWORD(v229) = v103;
    sub_1004B86C4();
    v112 = v108 + *(v178 + 36);
    *v112 = v111;
    *(v112 + 8) = v113;
    *(v112 + 16) = v114;
    *(v112 + 24) = v115;
    *(v112 + 32) = v116;
    *(v112 + 40) = 0;
    v117 = v182;
    sub_100339D98(v110, v182);
    sub_1004BA764();
    sub_1004B8E94();
    v118 = v191;
    sub_100025B04(v117, v191, &qword_10060E240, &qword_1004E18A0);
    v119 = (v118 + *(v179 + 36));
    v120 = v238;
    v119[4] = v237;
    v119[5] = v120;
    v119[6] = v239;
    v121 = v234;
    *v119 = v233;
    v119[1] = v121;
    v122 = v236;
    v119[2] = v235;
    v119[3] = v122;
    KeyPath = swift_getKeyPath();
    v124 = v118;
    v125 = v188;
    sub_100025B04(v124, v188, &qword_10060E248, &qword_1004E18A8);
    v126 = v125 + *(v189 + 36);
    *v126 = KeyPath;
    *(v126 + 8) = 0;
    *(v126 + 16) = 1;
    v127 = v125;
    v128 = v185;
    sub_100025B04(v127, v185, &qword_10060E250, &qword_1004E18B0);
    *(v128 + *(v186 + 36)) = 256;
    LODWORD(KeyPath) = sub_1004B9654();
    v129 = v128;
    v130 = v184;
    sub_100025B04(v129, v184, &qword_10060E258, &qword_1004E18B8);
    *(v130 + *(v181 + 36)) = KeyPath;
    v131 = sub_1004B9B44();
    v132 = swift_getKeyPath();
    v133 = v130;
    v134 = v187;
    sub_100025B04(v133, v187, &qword_10060E260, &qword_1004E18C0);
    v135 = (v134 + *(v180 + 36));
    *v135 = v132;
    v135[1] = v131;
    LOBYTE(v131) = sub_1004B9954();
    sub_1004B86C4();
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = v134;
    v145 = v194;
    sub_100025B04(v144, v194, &qword_10060E268, &qword_1004E18C8);
    v146 = v145 + *(v183 + 36);
    *v146 = v131;
    *(v146 + 8) = v137;
    *(v146 + 16) = v139;
    *(v146 + 24) = v141;
    *(v146 + 32) = v143;
    *(v146 + 40) = 0;
    v147 = sub_1004B9974();
    if (qword_100609C70 != -1)
    {
      swift_once();
    }

    sub_1004B86C4();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v145;
    v157 = v192;
    sub_100025B04(v156, v192, &qword_10060E270, &qword_1004E18D0);
    v158 = v157 + *(v193 + 36);
    *v158 = v147;
    *(v158 + 8) = v149;
    *(v158 + 16) = v151;
    *(v158 + 24) = v153;
    *(v158 + 32) = v155;
    *(v158 + 40) = 0;
    v159 = v197;
    sub_100025B04(v157, v197, &qword_10060E278, &qword_1004E18D8);
    v160 = v196;
    sub_10000F778(v108, v196, &qword_10060E280, &qword_1004E18E0);
    v161 = v198;
    sub_10000F778(v159, v198, &qword_10060E278, &qword_1004E18D8);
    v103 = v108;
    v162 = v199;
    sub_10000F778(v160, v199, &qword_10060E280, &qword_1004E18E0);
    v163 = sub_100003ABC(&qword_10060E2C8, &qword_1004E1928);
    sub_10000F778(v161, v162 + *(v163 + 48), &qword_10060E278, &qword_1004E18D8);
    v164 = v162 + *(v163 + 64);
    sub_100007214(v159, &qword_10060E278, &qword_1004E18D8);
    sub_100007214(v103, &qword_10060E280, &qword_1004E18E0);
    *v164 = 0x3FF0000000000000;
    *(v164 + 8) = 0;
    sub_100007214(v161, &qword_10060E278, &qword_1004E18D8);
    sub_100007214(v160, &qword_10060E280, &qword_1004E18E0);
    sub_100025B04(v162, v224, &qword_10060E238, &qword_1004E1898);
    v106 = 0;
    v61 = v223;
    LOBYTE(v103) = v229;
  }

  v165 = v224;
  (*(v220 + 56))(v224, v106, 1, v221);
  v229 = sub_1004B9204();
  v166 = v218;
  sub_10000F778(v61, v218, &qword_10060E290, &qword_1004E18F0);
  v167 = v219;
  sub_10000F778(v165, v219, &qword_10060E288, &qword_1004E18E8);
  v168 = v222;
  sub_10000F778(v166, v222, &qword_10060E290, &qword_1004E18F0);
  v169 = v61;
  v170 = sub_100003ABC(&qword_10060E2B0, &qword_1004E1910);
  v171 = v168 + v170[12];
  v172 = v227;
  v173 = v226;
  *v171 = v227;
  *(v171 + 8) = v173;
  v174 = v103 & 1;
  *(v171 + 16) = v174;
  *(v171 + 24) = v228;
  sub_10000F778(v167, v168 + v170[16], &qword_10060E288, &qword_1004E18E8);
  v175 = v168 + v170[20];
  sub_10002FA14(v172, v173, v174);

  sub_100007214(v165, &qword_10060E288, &qword_1004E18E8);
  sub_100007214(v169, &qword_10060E290, &qword_1004E18F0);
  *v175 = v229;
  *(v175 + 8) = 0;
  *(v175 + 16) = 1;
  *(v175 + 24) = 0;
  *(v175 + 32) = 1;
  sub_100007214(v167, &qword_10060E288, &qword_1004E18E8);
  sub_10002FA24(v172, v173, v174);

  return sub_100007214(v166, &qword_10060E290, &qword_1004E18F0);
}

uint64_t sub_100338C9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v95 = sub_100003ABC(&qword_10060E330, &qword_1004E1980);
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v90 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v78 - v4;
  sub_100003ABC(&qword_10060E338, &qword_1004E1988);
  __chkstk_darwin();
  v100 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v78 - v6;
  sub_100003ABC(&qword_10060A210, &qword_1004DB5A0);
  __chkstk_darwin();
  v87 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v78 - v8;
  v10 = type metadata accessor for Collaboration.Management.View(0) - 8;
  v11 = *v10;
  __chkstk_darwin();
  v102 = v12;
  v13 = (v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  __chkstk_darwin();
  v86 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v78 - v16;
  v93 = sub_100003ABC(&qword_10060E340, &qword_1004E1990);
  __chkstk_darwin();
  v85 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = v78 - v19;
  v20 = sub_100003ABC(&qword_10060E348, &qword_1004E1998);
  v97 = *(v20 - 8);
  v98 = v20;
  __chkstk_darwin();
  v96 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = v78 - v22;
  v92 = type metadata accessor for Collaboration.Management.View;
  sub_10034BD68(a1, v13, type metadata accessor for Collaboration.Management.View);
  v23 = *(v11 + 80);
  v24 = swift_allocObject();
  v91 = type metadata accessor for Collaboration.Management.View;
  sub_10034BDD4(v13, v24 + ((v23 + 16) & ~v23), type metadata accessor for Collaboration.Management.View);
  *&v17[*(v14 + 24)] = swift_getKeyPath();
  v82 = sub_100003ABC(&qword_10060DE10, &qword_1004DA108);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v17 = 0;
  *(v17 + 1) = sub_10034F0D4;
  *(v17 + 2) = v24;
  v84 = v14;
  v26 = &v17[*(v14 + 28)];
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = a1;
  v81 = *(a1 + 8);
  sub_10032F420(v9);
  v28 = sub_1004B6B04();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v80 = v28;
  v79 = v30;
  v78[1] = v29 + 48;
  v31 = (v30)(v9, 1) == 1;
  sub_100007214(v9, &qword_10060A210, &qword_1004DB5A0);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v103;
  sub_10034BDD4(v17, v103, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v35 = v93;
  v36 = (v34 + *(v93 + 36));
  *v36 = v32;
  v36[1] = sub_10034F128;
  v36[2] = v33;
  v37 = v27 + *(v10 + 44);
  v38 = *v37;
  v39 = *(v37 + 8);
  v105 = v38;
  v106 = v39;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA444();
  v88 = v27;
  sub_10034BD68(v27, v13, v92);
  v83 = v23;
  v40 = (v23 + 16) & ~v23;
  v41 = swift_allocObject();
  v92 = v13;
  sub_10034BDD4(v13, v41 + v40, v91);
  sub_100003ABC(&qword_10060E350, &unk_1004E1A30);
  sub_10034F1A0();
  v42 = v95;
  sub_10034E1F8(&qword_10060E378, &qword_10060E350, &unk_1004E1A30, sub_10034BA70);
  v43 = v35;
  v44 = v103;
  sub_1004BA0B4();

  v45 = 1;
  v46 = v94;

  sub_100007214(v44, &qword_10060E340, &qword_1004E1990);
  v47 = [objc_opt_self() currentTraitCollection];
  v48 = [v47 userInterfaceIdiom];

  if (v48 != 6)
  {
    v49 = v92;
    sub_10034BD68(v88, v92, type metadata accessor for Collaboration.Management.View);
    v50 = swift_allocObject();
    sub_10034BDD4(v49, v50 + v40, type metadata accessor for Collaboration.Management.View);
    v51 = swift_getKeyPath();
    v52 = v84;
    v53 = v86;
    *&v86[*(v84 + 24)] = v51;
    swift_storeEnumTagMultiPayload();
    v54 = swift_getKeyPath();
    *v53 = 1;
    *(v53 + 8) = sub_10034F288;
    *(v53 + 16) = v50;
    v55 = v53 + *(v52 + 28);
    *v55 = v54;
    *(v55 + 8) = 0;
    v56 = v87;
    sub_10032F420(v87);
    v57 = v79(v56, 1, v80) == 1;
    sub_100007214(v56, &qword_10060A210, &qword_1004DB5A0);
    v58 = swift_getKeyPath();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    v60 = v85;
    sub_10034BDD4(v53, v85, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    v61 = (v60 + *(v43 + 36));
    *v61 = v58;
    v61[1] = sub_100350888;
    v61[2] = v59;
    v62 = v60;
    v63 = v90;
    sub_100025B04(v62, v90, &qword_10060E340, &qword_1004E1990);
    v64 = (v63 + *(v42 + 36));
    *v64 = sub_100339D70;
    v64[1] = 0;
    v65 = v63;
    v66 = v89;
    sub_100025B04(v65, v89, &qword_10060E330, &qword_1004E1980);
    sub_100025B04(v66, v46, &qword_10060E330, &qword_1004E1980);
    v45 = 0;
  }

  v67 = v46;
  (*(v99 + 56))(v46, v45, 1, v42);
  v69 = v96;
  v68 = v97;
  v70 = *(v97 + 16);
  v71 = v104;
  v72 = v98;
  v70(v96, v104, v98);
  v73 = v100;
  sub_10000F778(v46, v100, &qword_10060E338, &qword_1004E1988);
  v74 = v101;
  v70(v101, v69, v72);
  v75 = sub_100003ABC(&qword_10060E380, &qword_1004E1A40);
  sub_10000F778(v73, &v74[*(v75 + 48)], &qword_10060E338, &qword_1004E1988);
  sub_100007214(v67, &qword_10060E338, &qword_1004E1988);
  v76 = *(v68 + 8);
  v76(v71, v72);
  sub_100007214(v73, &qword_10060E338, &qword_1004E1988);
  return (v76)(v69, v72);
}

uint64_t sub_100339778(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B80B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v8 = *v7;
  v9 = *(v7 + 1);
  v17[16] = v8;
  v18 = v9;
  v17[15] = 1;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  v10 = sub_1004BA434();
  v12 = Logger.collaboration.unsafeMutableAddressor(v10, v11);
  (*(v4 + 16))(v6, v12, v3);
  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Management] Share Sheet button tapped", v15, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100339920@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1004BBA84();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060A210, &qword_1004DB5A0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = sub_1004B6B04();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032F420(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_100007214(v8, &qword_10060A210, &qword_1004DB5A0);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v3;
    swift_getKeyPath();

    sub_1004B85A4();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v4 + 8))(v6, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_100339BC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B80B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v8 = *v7;
  v9 = *(v7 + 1);
  v17[16] = v8;
  v18 = v9;
  v17[15] = 1;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  v10 = sub_1004BA434();
  v12 = Logger.collaboration.unsafeMutableAddressor(v10, v11);
  (*(v4 + 16))(v6, v12, v3);
  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Management] QRCode button tapped", v15, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100339D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&qword_10060E2D0, &qword_1004E1930);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = sub_100003ABC(&qword_10060E2D8, &qword_1004E1938);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_100003ABC(&qword_10060E2E0, &qword_1004E1940);
  __chkstk_darwin();
  v12 = &v31 - v11;
  v39 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v42 == 1)
  {
    *v12 = sub_1004B9204();
    *(v12 + 1) = 0x4020000000000000;
    v12[16] = 0;
    v13 = sub_100003ABC(&qword_10060E320, &qword_1004E1960);
    sub_10033A2B0(&v12[*(v13 + 44)]);
    sub_10000F778(v12, v9, &qword_10060E2E0, &qword_1004E1940);
    swift_storeEnumTagMultiPayload();
    sub_1000206D4(&qword_10060E2F8, &qword_10060E2E0, &qword_1004E1940, &protocol conformance descriptor for HStack<A>);
    sub_10034EEB0();
    v14 = v41;
    sub_1004B9514();
    sub_100007214(v12, &qword_10060E2E0, &qword_1004E1940);
    v15 = 0;
    v16 = v14;
  }

  else
  {
    v36 = v7;
    v37 = v10;
    v16 = v41;
    sub_10032E8AC();
    if (v17)
    {
      sub_1004B92A4();
      v18 = sub_1004B9D64();
      v33 = v19;
      v34 = v18;
      v32 = v20;
      v35 = v21;
      v31 = sub_1004BA234();
      KeyPath = swift_getKeyPath();
      v23 = swift_getKeyPath();
      v24 = v40;
      sub_10034BD68(v39, v40, type metadata accessor for Collaboration.Management.View);
      v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v26 = swift_allocObject();
      sub_10034BDD4(v24, v26 + v25, type metadata accessor for Collaboration.Management.View);
      v27 = &v6[*(v4 + 36)];
      sub_100003ABC(&qword_10060E2F0, &qword_1004E1950);
      sub_1004B8AA4();
      *v27 = v23;
      v28 = v33;
      *v6 = v34;
      *(v6 + 1) = v28;
      v6[16] = v32 & 1;
      *(v6 + 3) = v35;
      *(v6 + 4) = KeyPath;
      *(v6 + 5) = v31;
      sub_10000F778(v6, v9, &qword_10060E2D0, &qword_1004E1930);
      swift_storeEnumTagMultiPayload();
      sub_1000206D4(&qword_10060E2F8, &qword_10060E2E0, &qword_1004E1940, &protocol conformance descriptor for HStack<A>);
      sub_10034EEB0();
      sub_1004B9514();
      sub_100007214(v6, &qword_10060E2D0, &qword_1004E1930);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  v29 = sub_100003ABC(&qword_10060E2E8, &qword_1004E1948);
  return (*(*(v29 - 8) + 56))(v16, v15, 1, v29);
}

uint64_t sub_10033A2B0@<X0>(char *a1@<X8>)
{
  v32 = a1;
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = sub_100003ABC(&qword_10060DDC8, &qword_1004E12E8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  sub_1004B8904();
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v13 = qword_100618C60;
  sub_1004B6DF4();
  v14 = sub_1004BBED4();
  v16 = v15;
  (*(v2 + 8))(v6, v1);
  v33 = v14;
  v34 = v16;
  sub_1002C4D1C();
  v17 = sub_1004B9D84();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v8 + 16);
  v24(v10, v12, v7);
  v31 = v12;
  v25 = v10;
  v26 = v32;
  v24(v32, v25, v7);
  v27 = &v26[*(sub_100003ABC(&qword_10060E328, &qword_1004E1968) + 48)];
  *v27 = v17;
  *(v27 + 1) = v19;
  v27[16] = v21 & 1;
  *(v27 + 3) = v23;
  sub_10002FA14(v17, v19, v21 & 1);
  v28 = *(v8 + 8);

  v28(v31, v7);
  sub_10002FA24(v17, v19, v21 & 1);

  return (v28)(v25, v7);
}

uint64_t sub_10033A690(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v9[15] = 1;

  sub_1004B85B4();
  v6 = sub_1004BC4B4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_1002E0EEC(0, 0, v4, &unk_1004E1978, v7);

  return sub_1004B8A94();
}

uint64_t sub_10033A7FC@<X0>(uint64_t a1@<X8>)
{
  sub_100003ABC(&qword_10060A210, &qword_1004DB5A0);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032F420(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_100007214(v3, &qword_10060A210, &qword_1004DB5A0);
    v9 = 0;
    v10 = 0;
LABEL_6:
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0uLL;
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v3, v4);
  v11 = sub_1004B6A34();
  v13 = QRCode.init(data:errorCorrectionLevel:)(v11, v12, 76, &v27);
  v14 = *(&v27 + 1);
  v15 = v28;
  v16 = v29;
  result = (*(v5 + 8))(v7, v4, v13);
  v10 = v29;
  if (!v29)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v17 = v30;
  v9 = v28;
  v26 = v27;
  sub_10003E428(v14, v15);
  v18 = v16;
  v19 = sub_1004B8D84();
  v20 = sub_1004B9964();
  v21 = sub_1004BA754();
  v23 = v22;
  result = sub_100007214(&v27, &qword_10060E230, &qword_1004E1890);
  v24 = v26;
  v25 = v20;
LABEL_7:
  *a1 = v24;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v25;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  return result;
}

uint64_t sub_10033AA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100003ABC(&unk_10060DB30, &qword_1004DD160);
  __chkstk_darwin();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v19[-v8];
  v10 = sub_1004BB7D4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3, a1, v10);
  v12 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v14 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  *(a3 + v14[9]) = KeyPath;
  sub_100003ABC(&unk_100609E90, &qword_1004D9FA8);
  swift_storeEnumTagMultiPayload();
  *(a3 + v14[5]) = v12;
  v15 = a3 + v14[6];
  v19[15] = 0;

  sub_1004BA414();
  v16 = v20;
  *v15 = v19[16];
  *(v15 + 8) = v16;
  (*(v11 + 56))(v9, 1, 1, v10);
  sub_10000F778(v9, v7, &unk_10060DB30, &qword_1004DD160);
  sub_1004BA414();
  sub_100007214(v9, &unk_10060DB30, &qword_1004DD160);
  v17 = v14[8];
  *(a3 + v17) = swift_getKeyPath();
  sub_100003ABC(&unk_10060D340, &qword_1004D9F70);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10033AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v35 = a2;
  v3 = sub_1004B9594();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v8 = *v7;
  v9 = *(*v7 + 64);
  __chkstk_darwin();
  v10 = sub_100003ABC(&qword_10060E1D0, &qword_1004E1840);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = sub_100003ABC(&qword_10060E1C8, &qword_1004E1838);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  __chkstk_darwin();
  v17 = &v30 - v16;
  sub_10034BD68(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_10034BDD4(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  sub_100003ABC(&qword_10060E1E8, &qword_1004E1848);
  sub_10034E6B0();
  sub_1004BA474();
  sub_1004B9584();
  v20 = sub_1000206D4(&qword_10060E1D8, &qword_10060E1D0, &qword_1004E1840, &protocol conformance descriptor for Button<A>);
  v21 = sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v22 = v31;
  sub_1004B9E14();
  v23 = v22;
  (*(v32 + 8))(v6, v22);
  (*(v11 + 8))(v13, v10);
  v24 = v30;
  v25 = v30 + v7[14];
  v26 = *v25;
  v27 = *(v25 + 8);
  v41 = v26;
  v42 = v27;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA444();
  v36 = v24;
  v37 = v10;
  v38 = v23;
  v39 = v20;
  v40 = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_1004BA074();

  return (*(v34 + 8))(v17, v28);
}

uint64_t sub_10033B130(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B80B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v8 = *v7;
  v9 = *(v7 + 1);
  v17[16] = v8;
  v18 = v9;
  v17[15] = 1;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  v10 = sub_1004BA434();
  v12 = Logger.collaboration.unsafeMutableAddressor(v10, v11);
  (*(v4 + 16))(v6, v12, v3);
  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Management] Remove Join Request button tapped", v15, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_10033B2D8@<Q0>(uint64_t a1@<X8>)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v25 - v6;
  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v8 = qword_100618C60;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  *&v25[0] = v9;
  *(&v25[0] + 1) = v11;
  sub_1002C4D1C();
  v12 = sub_1004B9D84();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1004BA754();
  sub_1004B8E94();
  v19 = v16 & 1;
  v26 = v16 & 1;
  v20 = sub_1004BA264();
  KeyPath = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  v22 = v25[5];
  *(a1 + 96) = v25[4];
  *(a1 + 112) = v22;
  *(a1 + 128) = v25[6];
  v23 = v25[1];
  *(a1 + 32) = v25[0];
  *(a1 + 48) = v23;
  result = v25[3];
  *(a1 + 64) = v25[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v20;
  return result;
}

uint64_t sub_10033B580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BA214();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  sub_1004BBDA4();
  v11 = *(v6 + 16);
  v43[4] = v6 + 16;
  v44 = v11;
  v11(v8, v10, v5);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v12 = qword_100618C60;
  v13 = qword_100618C60;
  v58 = v12;
  v14 = v13;
  sub_1004B6DF4();
  v15 = v14;
  v16 = sub_1004BBED4();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v10, v5);
  v43[1] = v6 + 8;
  v59 = v16;
  v60 = v18;
  v43[0] = sub_1002C4D1C();
  v20 = sub_1004B9D84();
  v49 = v21;
  v50 = v20;
  v47 = v22;
  v48 = v23;
  sub_1004BBDA4();
  v24 = v44;
  v44(v8, v10, v5);
  sub_1004B6DF4();
  v25 = sub_1004BBED4();
  v27 = v26;
  v19(v10, v5);
  v59 = v25;
  v60 = v27;
  v46 = sub_1004B9D84();
  v43[3] = v28;
  v45 = v29;
  v43[2] = v30 & 1;
  sub_1004BBDA4();
  v24(v8, v10, v5);
  sub_1004B6DF4();
  v31 = sub_1004BBED4();
  v33 = v32;
  v19(v10, v5);
  v59 = v31;
  v60 = v33;
  v34 = sub_1004B9D84();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  sub_10034BD68(v53, v54, type metadata accessor for Collaboration.Management.View);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_10034BDD4(v39, v41 + v40, type metadata accessor for Collaboration.Management.View);
  sub_1004BA1E4();
  sub_10002FA24(v34, v36, v38 & 1);

  sub_1004BA1F4();
  return sub_1004BA1D4();
}

uint64_t sub_10033BB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004B8A24();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = *(a1 + 8);
  v12 = sub_1004BC4B4();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  sub_1002E0EEC(0, 0, v10, a3, v13);

  type metadata accessor for Collaboration.Management.View(0);
  sub_100308E98(v8);
  sub_1004B8A14();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10033BCFC(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_10034BD68(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_10034BDD4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  sub_100003ABC(&qword_10060D2A0, &qword_1004E08C0);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_1000206D4(&qword_10060E208, &qword_10060D2A0, &qword_1004E08C0, &protocol conformance descriptor for [A]);
  sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_1004E10F0);
  sub_10034A084(&qword_10060E210, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  return sub_1004BA664();
}

uint64_t sub_10033BF6C@<X0>(uint64_t a2@<X8>)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  sub_1004BBDF4();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v9 = *(v19 + 16);

  sub_1004BBDE4();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1004BBDD4(v21);
  v19 = v9;
  sub_1004BBDB4();
  v22._object = 0x8000000100508FA0;
  v22._countAndFlagsBits = 0xD000000000000010;
  sub_1004BBDD4(v22);
  sub_1004BBE04();
  (*(v4 + 16))(v6, v8, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v10 = qword_100618C60;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v19 = v11;
  v20 = v13;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_10033C26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  *a2 = sub_1004B9204();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = *(sub_100003ABC(&qword_10060E218, &qword_1004E1868) + 44);
  sub_10034BD68(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  sub_1004BC474();
  v6 = sub_1004BC464();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_10034BDD4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Collaboration.Management.View);
  sub_10034BD68(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v9 = sub_1004BC464();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_10034BDD4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for Collaboration.Management.View);
  sub_1004BA5C4();
  return sub_1004BA544();
}

void sub_10033C4AC(BOOL *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = (v3 & 1) == 0;
}

double sub_10033C534(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = *a1;
  v9 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = (v8 & 1) == 0;
  v14[15] = v10;

  sub_1004B85B4();
  v11 = sub_1004BC4B4();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;

  sub_1002E11EC(0, 0, v7, &unk_1004E1878, v12);

  return result;
}

uint64_t sub_10033C6A4@<X0>(uint64_t a1@<X8>)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v8 = qword_100618C60;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

__n128 sub_10033C8B4@<Q0>(uint64_t a2@<X8>)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v38[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if ((v42 & 1) == 0)
  {
    sub_1004BBDA4();
    (*(v4 + 16))(v6, v8, v3);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v22 = qword_100618C60;
    sub_1004B6DF4();
    v23 = sub_1004BBED4();
    v25 = v24;
    (*(v4 + 8))(v8, v3);
    *&v42 = v23;
    *(&v42 + 1) = v25;
    sub_1002C4D1C();
    v15 = sub_1004B9D84();
    v17 = v15;
    v18 = v16;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v20 = v26 & 1;
    v40.n128_u64[0] = v26 & 1;
    v40.n128_u64[1] = v27;
    LOBYTE(v41) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v9 = *(v42 + 16);

  v10 = (v4 + 16);
  if (v9)
  {
    sub_1004BBDA4();
    (*v10)(v6, v8, v3);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v11 = qword_100618C60;
    sub_1004B6DF4();
    v12 = sub_1004BBED4();
    v14 = v13;
    (*(v4 + 8))(v8, v3);
    *&v42 = v12;
    *(&v42 + 1) = v14;
    sub_1002C4D1C();
    v15 = sub_1004B9D84();
    v17 = v15;
    v18 = v16;
    v20 = v19 & 1;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v40.n128_u64[0] = v19 & 1;
    v40.n128_u64[1] = v21;
    LOBYTE(v41) = 1;
LABEL_9:
    sub_10002FA14(v15, v16, v20);

    sub_1004B9514();
    v39 = v42;
    v40 = v43;
    v41 = v44;
    sub_100003ABC(&qword_10060C330, &unk_1004DEC70);
    sub_1003078FC();
    sub_1004B9514();
    sub_10002FA24(v17, v18, v20);

    goto LABEL_10;
  }

  sub_1004BBDA4();
  (*v10)(v6, v8, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v31 = qword_100618C60;
  sub_1004B6DF4();
  v32 = sub_1004BBED4();
  v34 = v33;
  (*(v4 + 8))(v8, v3);
  *&v42 = v32;
  *(&v42 + 1) = v34;
  sub_1002C4D1C();
  *&v39 = sub_1004B9D84();
  *(&v39 + 1) = v35;
  v40.n128_u64[0] = v36 & 1;
  v40.n128_u64[1] = v37;
  v41 = 256;
  sub_100003ABC(&qword_10060C330, &unk_1004DEC70);
  sub_1003078FC();
  sub_1004B9514();
LABEL_10:
  result = v43;
  v29 = v44;
  v30 = v45;
  *a2 = v42;
  *(a2 + 16) = result;
  *(a2 + 32) = v29;
  *(a2 + 33) = v30;
  return result;
}

uint64_t sub_10033CE78(uint64_t a1)
{
  sub_1004B9564();
  __chkstk_darwin();
  v2 = sub_100003ABC(&qword_10060D3B0, &qword_1004E09E0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7[-v4];
  sub_1004B9554();
  v8 = a1;
  sub_100003ABC(&qword_10060E068, &qword_1004E1758);
  sub_1000206D4(&qword_10060E070, &qword_10060E068, &qword_1004E1758, &protocol conformance descriptor for Button<A>);
  sub_1004B8864();
  sub_1000206D4(&qword_10060D3B8, &qword_10060D3B0, &qword_1004E09E0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_1004B95F4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10033D064(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  sub_1004B86B4();
  __chkstk_darwin();
  sub_1004B8694();
  sub_10034BD68(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_10034BDD4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  return sub_1004BA484();
}

uint64_t sub_10033D1E0(uint64_t a1)
{
  v16 = sub_1004B9184();
  v2 = *(v16 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_100609E80, &qword_1004E2FD0);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = sub_1004B8A24();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Collaboration.Management.View(0);
  sub_10000F778(a1 + *(v11 + 20), v6, &unk_100609E80, &qword_1004E2FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = sub_1004BC994();
    v13 = sub_1004B9904();
    sub_1004B7F84(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004B9174();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1004B8A14();
  return (*(v8 + 8))(v10, v7);
}

void sub_10033D468(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1004B8A24();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    sub_100308E98(v6);
    sub_1004B8A14();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_10033D55C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceIdiom];

  byte_10060D1E0 = v3 == 6;
}

void sub_10033D5F4()
{
  if (qword_100609C28 != -1)
  {
    swift_once();
  }

  if (byte_10060D1E0 == 1)
  {
    v0 = sub_1004B9A24();
  }

  else
  {
    sub_1004B9AD4();
    v0 = sub_1004B9A54();
  }

  qword_10060D1F0 = v0;
}

uint64_t sub_10033D67C()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (byte_10060D1E0)
  {
    v0 = 68.0;
  }

  qword_10060D1F8 = *&v0;
  return result;
}

uint64_t sub_10033D788(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_100609C28 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_10060D1E0 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

void sub_10033D818(uint64_t a1)
{
  if (qword_100609C28 != -1)
  {
    swift_once();
  }

  if (byte_10060D1E0 == 1)
  {
    sub_1004B9AA4();
  }

  else
  {
    sub_1004B9A94();
  }

  qword_10060D218 = v1;
}

uint64_t sub_10033D880()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_10060D1E0)
  {
    v0 = 0.0;
  }

  qword_10060D220 = *&v0;
  return result;
}

uint64_t sub_10033D8E8()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (byte_10060D1E0)
  {
    v0 = 0.0;
  }

  qword_10060D228 = *&v0;
  return result;
}

uint64_t sub_10033D950()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_10060D1E0)
  {
    v0 = 44.0;
  }

  qword_10060D230 = *&v0;
  return result;
}

uint64_t sub_10033D9C0()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (byte_10060D1E0)
  {
    v0 = 169.0;
  }

  qword_10060D238 = *&v0;
  return result;
}

uint64_t sub_10033DA34()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (byte_10060D1E0)
  {
    v0 = 48.0;
  }

  qword_10060D240 = *&v0;
  return result;
}

uint64_t sub_10033DAA4()
{
  if (qword_100609C28 != -1)
  {
    swift_once();
  }

  if (byte_10060D1E0 == 1)
  {
    result = sub_1004BA234();
  }

  else
  {
    if (qword_100609AC0 != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = sub_1004BA304();
  }

  qword_10060D248 = result;
  return result;
}

uint64_t sub_10033DB4C()
{
  v0 = sub_1004B8C94();
  sub_100007108(v0, qword_10060D250);
  v1 = sub_100007084(v0, qword_10060D250);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10033DBD4()
{
  v0 = sub_1004B8C94();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&qword_10060DE78, &qword_1004E1378);
  sub_100007108(v4, qword_10060D268);
  v5 = sub_100007084(v4, qword_10060D268);
  if (qword_100609C98 != -1)
  {
    swift_once();
  }

  v6 = sub_100007084(v0, qword_10060D250);
  (*(v1 + 16))(v3, v6, v0);
  sub_10034A084(&unk_10060DEC0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1004BBD84();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10033DDA4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_1004B92E4();
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004B9754();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin();
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_10060DC48, &qword_1004E1140);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v30 = sub_100003ABC(&qword_10060DC50, &qword_1004E1148);
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v32 = sub_100003ABC(&qword_10060DC58, &qword_1004E1150);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v34 = sub_100003ABC(&qword_10060DC60, &qword_1004E1158);
  v35 = *(v34 - 8);
  __chkstk_darwin();
  v29 = &v29 - v12;
  *v7 = sub_1004B9204();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = sub_100003ABC(&qword_10060DC68, &qword_1004E1160);
  sub_10033E3C4(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = sub_100003ABC(&qword_10060DC70, &qword_1004E1168);
  v15 = sub_10034BB98();
  v16 = sub_10034E1F8(&unk_10060DCA0, &qword_10060DC70, &qword_1004E1168, sub_10034BC7C);
  sub_1004B9E74();
  sub_100007214(v7, &qword_10060DC48, &qword_1004E1140);
  v17 = v1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA444();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1004BA074();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  sub_1004B9744();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  sub_1004B9FF4();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  sub_1004B92D4();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_1004BA014();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_10033E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v109 = *(v3 - 8);
  __chkstk_darwin();
  v110 = v4;
  v111 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100003ABC(&qword_10060DCF0, &qword_1004E1220);
  __chkstk_darwin();
  v116 = &v108 - v5;
  v115 = sub_100003ABC(&qword_10060DCF8, &qword_1004E1228);
  __chkstk_darwin();
  v112 = &v108 - v6;
  v7 = sub_100003ABC(&qword_10060DD00, &qword_1004E1230);
  v143 = *(v7 - 8);
  v144 = v7;
  __chkstk_darwin();
  v114 = &v108 - v8;
  v9 = sub_1004BBA84();
  v139 = *(v9 - 8);
  v140 = v9;
  __chkstk_darwin();
  v138 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DD08, &unk_1004E1238);
  __chkstk_darwin();
  v145 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v108 - v12;
  sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
  __chkstk_darwin();
  v127 = &v108 - v13;
  v14 = sub_1004BB634();
  v128 = *(v14 - 8);
  v129 = v14;
  __chkstk_darwin();
  v126 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v122 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v108 - v17;
  v18 = sub_1004B7D94();
  v130 = *(v18 - 8);
  v131 = v18;
  __chkstk_darwin();
  v133 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v108 - v20;
  __chkstk_darwin();
  v125 = &v108 - v21;
  __chkstk_darwin();
  v135 = &v108 - v22;
  v136 = sub_1004B7D04();
  v134 = *(v136 - 8);
  __chkstk_darwin();
  v149 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v24 = *(v117 + 64);
  __chkstk_darwin();
  v118 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v108 - v25;
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v120 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v108 - v27;
  __chkstk_darwin();
  v148 = &v108 - v28;
  v151 = sub_100003ABC(&qword_10060DD18, &qword_1004E1248);
  v137 = *(v151 - 8);
  __chkstk_darwin();
  v124 = &v108 - v29;
  v30 = sub_1004B8C94();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v108 - v34;
  sub_100003ABC(&unk_10060DD20, &unk_1004E1250);
  __chkstk_darwin();
  v142 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v108 - v37;
  v141 = v3;
  v39 = a1;
  sub_100308A40(v35);
  if (qword_100609C98 != -1)
  {
    swift_once();
  }

  v40 = sub_100007084(v30, qword_10060D250);
  (*(v31 + 16))(v33, v40, v30);
  sub_10034A084(&qword_10060AC48, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v41 = sub_1004BBD54();
  v42 = *(v31 + 8);
  v42(v33, v30);
  v42(v35, v30);
  v43 = 1;
  v44 = 1;
  v45 = v39;
  v46 = v38;
  v47 = v151;
  v150 = v38;
  if ((v41 & 1) == 0)
  {
    v48 = v148;
    sub_10033FAA0(v148);
    v49 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
    v50 = v132;
    (*(*(v49 - 8) + 56))(v132, 8, 11, v49);
    v174 = 1;
    v172 = 1;
    v170 = 1;
    (*(v134 + 104))(v149, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v136);
    v51 = v118;
    sub_10034BD68(v50, v118, type metadata accessor for ArtworkImage.Placeholder);
    v52 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v53 = swift_allocObject();
    sub_10034BDD4(v51, v53 + v52, type metadata accessor for ArtworkImage.Placeholder);
    v118 = v53;
    v54 = v53 + ((v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v54 = 0;
    *(v54 + 8) = v174;
    *(v54 + 9) = *v173;
    *(v54 + 12) = *&v173[3];
    *(v54 + 16) = 0;
    *(v54 + 24) = v172;
    *(v54 + 25) = *v171;
    *(v54 + 28) = *&v171[3];
    *(v54 + 32) = 0;
    *(v54 + 40) = v170;
    *(v54 + 41) = 2;
    v55 = v119;
    sub_10000F778(v48, v119, &qword_10060EF20, &qword_1004D9F00);
    v56 = type metadata accessor for ArtworkImage.ViewModel(0);
    v57 = *(*(v56 - 8) + 48);
    if (v57(v55, 1, v56) == 1)
    {
      sub_100007214(v55, &qword_10060EF20, &qword_1004D9F00);
      v58 = sub_1004BB6C4();
      v59 = v121;
      (*(*(v58 - 8) + 56))(v121, 1, 1, v58);
    }

    else
    {
      v60 = sub_1004BB6C4();
      v61 = *(v60 - 8);
      v59 = v121;
      (*(v61 + 16))(v121, v55, v60);
      sub_10034C2B8(v55, type metadata accessor for ArtworkImage.ViewModel);
      (*(v61 + 56))(v59, 0, 1, v60);
    }

    sub_10000F778(v59, v122, &unk_10060EBE0, &unk_1004DBE60);
    sub_1004B7D84();
    sub_100007214(v59, &unk_10060EBE0, &unk_1004DBE60);
    sub_1004B7D34();
    v62 = v120;
    sub_10000F778(v148, v120, &qword_10060EF20, &qword_1004D9F00);
    v63 = v57(v62, 1, v56);
    v108 = v45;
    if (v63 == 1)
    {
      sub_100007214(v62, &qword_10060EF20, &qword_1004D9F00);
      v64 = v127;
      v65 = v128;
      v66 = v129;
      (*(v128 + 56))(v127, 1, 1, v129);
      v67 = v126;
      v43 = 1;
    }

    else
    {
      v64 = v127;
      sub_10000F778(v62 + *(v56 + 20), v127, &qword_10060DD10, &qword_1004DEE10);
      sub_10034C2B8(v62, type metadata accessor for ArtworkImage.ViewModel);
      v65 = v128;
      v66 = v129;
      v68 = (*(v128 + 48))(v64, 1, v129);
      v67 = v126;
      v43 = 1;
      if (v68 != 1)
      {
        (*(v65 + 32))(v126, v64, v66);
LABEL_15:
        v70 = v123;
        v71 = v133;
        sub_1004B7D14();
        (*(v65 + 8))(v67, v66);
        v72 = v131;
        v73 = *(v130 + 8);
        v73(v71, v131);
        v74 = v125;
        sub_1004B7D44();
        v73(v70, v72);
        sub_100003ABC(&qword_10060C998, &qword_1004DF240);
        sub_1003169C4();
        v75 = v124;
        sub_1004B7D24();

        v73(v74, v72);
        v73(v135, v72);
        (*(v134 + 8))(v149, v136);
        sub_10034C2B8(v132, type metadata accessor for ArtworkImage.Placeholder);
        sub_100007214(v148, &qword_10060EF20, &qword_1004D9F00);
        v76 = v75 + *(sub_100003ABC(&qword_10060DD90, &qword_1004E1278) + 36);
        *v76 = 0;
        *(v76 + 8) = 0;
        *(v76 + 16) = 2;
        if (qword_100609C88 != -1)
        {
          swift_once();
        }

        sub_1004BA754();
        sub_1004B8994();
        v77 = (v75 + *(sub_100003ABC(&qword_10060DD98, &qword_1004E1280) + 36));
        v78 = v165;
        *v77 = v164;
        v77[1] = v78;
        v77[2] = v166;
        v46 = v150;
        v47 = v151;
        v79 = v75 + *(v151 + 36);
        *v79 = 0;
        *(v79 + 8) = 257;
        sub_100025B04(v75, v46, &qword_10060DD18, &qword_1004E1248);
        v44 = 0;
        v45 = v108;
        goto LABEL_18;
      }
    }

    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v69 = sub_100007084(v66, static Artwork.CropStyle.fallback);
    (*(v65 + 16))(v67, v69, v66);
    if ((*(v65 + 48))(v64, 1, v66) != 1)
    {
      sub_100007214(v64, &qword_10060DD10, &qword_1004DEE10);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v137 + 56))(v46, v44, 1, v47);
  v151 = sub_1004B9354();
  LOBYTE(v154[0]) = 1;
  sub_10033FF3C(v45, v162);
  *&v161[23] = v162[1];
  *&v161[39] = v162[2];
  *&v161[55] = v162[3];
  v161[71] = v163;
  *&v161[7] = v162[0];
  LODWORD(v149) = LOBYTE(v154[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v138;
  sub_1004B85A4();

  v81 = sub_1004BB924();
  (*(v139 + 8))(v80, v140);
  if (v81 != 2 && (v81 & 1) != 0)
  {
    v82 = sub_1004BB7C4();
    if (v82 != 2 && (v82 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v83 = sub_1003A837C(v45, v154[0]);

      if (v83)
      {
        v84 = v112;
        sub_1004B8904();
        if (qword_100609C78 != -1)
        {
          swift_once();
        }

        sub_1004BA754();
        sub_1004B8994();
        v85 = (v84 + *(v115 + 36));
        v86 = v168;
        *v85 = v167;
        v85[1] = v86;
        v85[2] = v169;
        sub_10000F778(v84, v116, &qword_10060DCF8, &qword_1004E1228);
        swift_storeEnumTagMultiPayload();
        sub_100003ABC(&qword_10060DDB0, &qword_1004E12E0);
        sub_10034C200();
        sub_1000206D4(&unk_10060DDD0, &qword_10060DDB0, &qword_1004E12E0, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        sub_1004B9514();
        sub_100007214(v84, &qword_10060DCF8, &qword_1004E1228);
      }

      else
      {
        v88 = v111;
        sub_10034BD68(v45, v111, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v89 = (*(v109 + 80) + 16) & ~*(v109 + 80);
        v90 = swift_allocObject();
        sub_10034BDD4(v88, v90 + v89, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        sub_10034BD68(v45, v88, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v91 = swift_allocObject();
        sub_10034BDD4(v88, v91 + v89, _s10ManagementO4ViewV19CollaboratorRowViewVMa);

        v92 = v116;
        *v116 = 1;
        *(v92 + 1) = sub_10034C16C;
        *(v92 + 2) = v90;
        v92[24] = 0;
        *(v92 + 4) = sub_10034C17C;
        *(v92 + 5) = v91;

        swift_storeEnumTagMultiPayload();
        sub_100003ABC(&qword_10060DDB0, &qword_1004E12E0);
        sub_10034C200();
        sub_1000206D4(&unk_10060DDD0, &qword_10060DDB0, &qword_1004E12E0, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        sub_1004B9514();
      }

      sub_100025B04(v87, v147, &qword_10060DD00, &qword_1004E1230);
      v43 = 0;
    }
  }

  v93 = v147;
  (*(v143 + 56))(v147, v43, 1, v144);
  v94 = v46;
  v95 = v142;
  sub_10000F778(v94, v142, &unk_10060DD20, &unk_1004E1250);
  v96 = v145;
  sub_10000F778(v93, v145, &qword_10060DD08, &unk_1004E1238);
  v97 = v146;
  sub_10000F778(v95, v146, &unk_10060DD20, &unk_1004E1250);
  v98 = sub_100003ABC(&qword_10060DDA0, &qword_1004E1288);
  v99 = (v97 + v98[12]);
  v100 = v151;
  v152[0] = v151;
  v152[1] = 0;
  v101 = v149;
  LOBYTE(v153[0]) = v149;
  *(v153 + 1) = *v161;
  *(&v153[1] + 1) = *&v161[16];
  *(&v153[2] + 1) = *&v161[32];
  *(&v153[3] + 1) = *&v161[48];
  *(&v153[4] + 1) = *&v161[64];
  v102 = v153[0];
  *v99 = v151;
  v99[1] = v102;
  v103 = v153[1];
  v104 = v153[2];
  v105 = v153[3];
  *(v99 + 73) = *(&v153[3] + 9);
  v99[3] = v104;
  v99[4] = v105;
  v99[2] = v103;
  v106 = v97 + v98[16];
  *v106 = 0;
  *(v106 + 8) = 1;
  sub_10000F778(v96, v97 + v98[20], &qword_10060DD08, &unk_1004E1238);
  sub_10000F778(v152, v154, &qword_10060DDA8, &qword_1004E1290);
  sub_100007214(v93, &qword_10060DD08, &unk_1004E1238);
  sub_100007214(v150, &unk_10060DD20, &unk_1004E1250);
  sub_100007214(v96, &qword_10060DD08, &unk_1004E1238);
  v154[0] = v100;
  v154[1] = 0;
  v155 = v101;
  v157 = *&v161[16];
  v158 = *&v161[32];
  v159 = *&v161[48];
  v160 = *&v161[64];
  v156 = *v161;
  sub_100007214(v154, &qword_10060DDA8, &qword_1004E1290);
  return sub_100007214(v95, &unk_10060DD20, &unk_1004E1250);
}

uint64_t sub_10033FAA0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1004BB6C4();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v7;
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(v2 + 56);
  v13(&v24 - v11, 1, 1, v1, v10);
  sub_1004BB7B4();
  v29 = *(v2 + 48);
  if (v29(v9, 1, v1) == 1)
  {
    v25 = v13;
    sub_100007214(v9, &unk_10060EBE0, &unk_1004DBE60);
    sub_100009130(0, &qword_10060A758, MPArtworkCatalog_ptr);
    v14 = sub_1004BB774();
    v26 = v6;
    v16 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v14, v15, 0, 1);
    v6 = v26;

    if (v16)
    {
      v17 = v27;
      sub_1004BB584();
      sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
      (v25)(v17, 0, 1, v1);
      sub_100025B04(v17, v12, &unk_10060EBE0, &unk_1004DBE60);
    }
  }

  else
  {
    sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
    (*(v2 + 32))(v12, v9, v1);
    (v13)(v12, 0, 1, v1);
  }

  sub_10000F778(v12, v6, &unk_10060EBE0, &unk_1004DBE60);
  if (v29(v6, 1, v1) == 1)
  {
    sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
    sub_100007214(v6, &unk_10060EBE0, &unk_1004DBE60);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  }

  else
  {
    (*(v2 + 32))(v4, v6, v1);
    v20 = v28;
    (*(v2 + 16))(v28, v4, v1);
    v21 = type metadata accessor for ArtworkImage.ViewModel(0);
    v22 = *(v21 + 20);
    sub_1004BB5B4();
    (*(v2 + 8))(v4, v1);
    sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
    v23 = sub_1004BB634();
    (*(*(v23 - 8) + 56))(v20 + v22, 0, 1, v23);
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }
}

double sub_10033FF3C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  sub_1004BBDF4();
  __chkstk_darwin();
  sub_1004B6E64();
  __chkstk_darwin();
  v95 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v93 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v90 - v7;
  v8 = sub_1004BBA84();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v90[1] = v12;
  sub_1004B85A4();

  v13 = sub_1004BB924();
  (*(v9 + 8))(v11, v8);
  v14 = sub_1003408DC(v13 & 1);
  if (v15)
  {
    v91 = v5;
    v92 = v4;
    v103 = v14;
    v104 = v15;
    sub_1002C4D1C();
    v16 = sub_1004B9D84();
    v18 = v17;
    v20 = v19;
    LODWORD(v103) = sub_1004B9624();
    v21 = sub_1004B9C84();
    v23 = v22;
    v25 = v24;
    sub_10002FA24(v16, v18, v20 & 1);

    if (qword_100609C48 != -1)
    {
      swift_once();
    }

    v26 = sub_1004B9CE4();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_10002FA24(v21, v23, v25 & 1);

    v33 = v28 & 1;
    sub_10002FA14(v26, v32, v28 & 1);
    v96 = v30;

    v4 = v92;
    v5 = v91;
  }

  else
  {
    v26 = 0;
    v32 = 0;
    v33 = 0;
    v96 = 0;
  }

  v34 = sub_1004BB7C4();
  if (v34 == 2 || (v34 & 1) == 0 || (sub_10032D780() & 1) != 0)
  {
    v35 = sub_1004BB7A4();
    if (!v36)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = -1;
      goto LABEL_17;
    }

    v37 = v35;
    v38 = v36;
    v92 = v32;
    sub_1004BBDE4();
    v108._countAndFlagsBits = 64;
    v108._object = 0xE100000000000000;
    sub_1004BBDD4(v108);
    v109._countAndFlagsBits = v37;
    v109._object = v38;
    sub_1004BBDC4(v109);

    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    sub_1004BBDD4(v110);
    v39 = v94;
    sub_1004BBE04();
    (*(v5 + 16))(v93, v39, v4);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v91 = v26;
    v40 = qword_100618C60;
    sub_1004B6DF4();
    v41 = sub_1004BBED4();
    v43 = v42;
    (*(v5 + 8))(v39, v4);
    v103 = v41;
    v104 = v43;
    sub_1002C4D1C();
    v44 = sub_1004B9D84();
    v46 = v45;
    v48 = v47;
    LODWORD(v103) = sub_1004B9654();
    v49 = sub_1004B9C84();
    v51 = v50;
    v53 = v52;
    sub_10002FA24(v44, v46, v48 & 1);

    if (qword_100609C50 != -1)
    {
      swift_once();
    }

    v54 = sub_1004B9CE4();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_10002FA24(v49, v51, v53 & 1);

    v98 = v54;
    v99 = v56;
    v100 = v58 & 1;
    v101 = v60;
    v102 = 1;
    sub_1004B9514();
    v61 = v103;
    v62 = v104;
    v63 = v105;
    v64 = v106;
    v65 = v107;
    sub_10034C374(v103, v104, v105, v106);
    v26 = v91;
  }

  else
  {
    v92 = v32;
    v69 = v94;
    sub_1004BBDA4();
    (*(v5 + 16))(v93, v69, v4);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v70 = qword_100618C60;
    sub_1004B6DF4();
    v71 = sub_1004BBED4();
    v73 = v72;
    (*(v5 + 8))(v69, v4);
    v103 = v71;
    v104 = v73;
    sub_1002C4D1C();
    v74 = sub_1004B9D84();
    v76 = v75;
    v78 = v77;
    LODWORD(v103) = sub_1004B9654();
    v79 = sub_1004B9C84();
    v81 = v80;
    v83 = v82;
    sub_10002FA24(v74, v76, v78 & 1);

    if (qword_100609C50 != -1)
    {
      swift_once();
    }

    v84 = sub_1004B9CE4();
    v86 = v85;
    v88 = v87;
    v95 = v89;

    sub_10002FA24(v79, v81, v83 & 1);

    v98 = v84;
    v99 = v86;
    v100 = v88 & 1;
    v101 = v95;
    v102 = 0;
    sub_1004B9514();
    v61 = v103;
    v62 = v104;
    v63 = v105;
    v64 = v106;
    v65 = v107;
    sub_10034C374(v103, v104, v105, v106);
  }

  v32 = v92;
LABEL_17:
  v66 = v96;
  sub_10034C318(v26, v32, v33, v96);
  sub_10034C35C(v61, v62, v63, v64, v65);
  sub_10034C3B0(v26, v32, v33, v66);
  sub_10034C3F4(v61, v62, v63, v64, v65);
  v67 = v97;
  *v97 = v26;
  v67[1] = v32;
  v67[2] = v33;
  v67[3] = v66;
  v67[4] = v61;
  v67[5] = v62;
  v67[6] = v63;
  v67[7] = v64;
  *(v67 + 64) = v65;
  sub_10034C3F4(v61, v62, v63, v64, v65);
  return sub_10034C3B0(v26, v32, v33, v66);
}

uint64_t sub_1003408DC(char a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  sub_1004BBE14();
  __chkstk_darwin();
  sub_1004BBDF4();
  __chkstk_darwin();
  result = sub_1004BB774();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    if (Playlist.Collaborator.isHost.getter())
    {
      sub_1004BBDE4();
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      sub_1004BBDD4(v7);
      v8._countAndFlagsBits = v4;
      v8._object = v5;
      sub_1004BBDC4(v8);

      v9._countAndFlagsBits = 0x2972656E774F2820;
      v9._object = 0xE800000000000000;
      sub_1004BBDD4(v9);
      sub_1004BBE04();
      if (a1)
      {
        if (qword_100609A20 != -1)
        {
          swift_once();
        }
      }

      else if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v6 = qword_100618C60;
      sub_1004B6DF4();
      return sub_1004BBEC4();
    }

    else
    {
      return v4;
    }
  }

  return result;
}

double sub_100340B58(uint64_t a1, const char *a2, int a3)
{
  v6 = sub_1004B80B4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.collaboration.unsafeMutableAddressor(v10, v11);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a2, v15, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_100331454(a1, a3);
}

uint64_t sub_100340CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin();
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EE90, &qword_1004E11A0);
  __chkstk_darwin();
  v30 = &v27 - v4;
  v5 = sub_100003ABC(&qword_10060DCB0, &qword_1004E1180);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v28 = &v27 - v7;
  v8 = sub_1004BBA84();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v12 = sub_1004BB924();
  (*(v9 + 8))(v11, v8);
  if (v12 == 2 || (v12 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v13 = sub_1004BB7C4(), v13 == 2) || (v13 & 1) != 0)
  {
    v14 = 1;
    v15 = v32;
  }

  else
  {
    v17 = v30;
    sub_1004B86A4();
    v18 = sub_1004B86B4();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    v19 = v31;
    sub_10034BD68(a1, v31, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v21 = swift_allocObject();
    sub_10034BDD4(v19, v21 + v20, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = v28;
    sub_1004BA464();
    v23 = sub_1004BA264();
    KeyPath = swift_getKeyPath();
    v25 = (v22 + *(v5 + 36));
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = v32;
    sub_100025B04(v22, v32, &qword_10060DCB0, &qword_1004E1180);
    v15 = v26;
    v14 = 0;
  }

  return (*(v6 + 56))(v15, v14, 1, v5);
}

uint64_t sub_100341100(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B80B4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003ABC(&unk_10060DB30, &qword_1004DD160);
  __chkstk_darwin();
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v24[-v9];
  v11 = sub_1004BB7D4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10000F778(v10, v8, &unk_10060DB30, &qword_1004DD160);
  sub_100003ABC(&qword_10060DAB8, &qword_1004E0CB8);
  sub_1004BA434();
  sub_100007214(v10, &unk_10060DB30, &qword_1004DD160);
  v14 = (a1 + *(v13 + 24));
  v15 = *v14;
  v16 = *(v14 + 1);
  v24[16] = v15;
  v25 = v16;
  v24[15] = 1;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  v17 = sub_1004BA434();
  v19 = Logger.collaboration.unsafeMutableAddressor(v17, v18);
  (*(v4 + 16))(v6, v19, v3);
  v20 = sub_1004B8094();
  v21 = sub_1004BC9A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "[Management] Remove swipe action triggered", v22, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003413F4@<X0>(uint64_t a1@<X8>)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v8 = qword_100618C60;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1003415FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BA214();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  sub_1004BBDA4();
  v44 = *(v6 + 16);
  v44(v8, v10, v5);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v11 = qword_100618C60;
  v12 = qword_100618C60;
  v43[3] = v11;
  v13 = v12;
  sub_1004B6DF4();
  v14 = v13;
  v15 = sub_1004BBED4();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v43[1] = v6 + 8;
  v58 = v15;
  v59 = v17;
  v43[2] = sub_1002C4D1C();
  v19 = sub_1004B9D84();
  v49 = v20;
  v50 = v19;
  v47 = v21;
  v48 = v22;
  sub_1004BBDA4();
  v23 = v44;
  v44(v8, v10, v5);
  sub_1004B6DF4();
  v43[0] = v6 + 16;
  v24 = sub_1004BBED4();
  v26 = v25;
  v18(v10, v5);
  v58 = v24;
  v59 = v26;
  v27 = sub_1004B9D84();
  v45 = v28;
  v46 = v27;
  v43[4] = v29 & 1;
  v43[5] = v30;
  sub_1004BBDA4();
  v23(v8, v10, v5);
  sub_1004B6DF4();
  v31 = sub_1004BBED4();
  v33 = v32;
  v18(v10, v5);
  v58 = v31;
  v59 = v33;
  v34 = sub_1004B9D84();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  sub_10034BD68(v53, v54, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_10034BDD4(v39, v41 + v40, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_1004BA1E4();
  sub_10002FA24(v34, v36, v38 & 1);

  sub_1004BA1F4();
  return sub_1004BA1D4();
}

uint64_t sub_100341BA4()
{
  sub_100003ABC(&unk_10060DB30, &qword_1004DD160);
  __chkstk_darwin();
  v1 = &v3 - v0;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100003ABC(&qword_10060DAB8, &qword_1004E0CB8);
  sub_1004BA424();
  sub_100330BAC(v1);
  return sub_100007214(v1, &unk_10060DB30, &qword_1004DD160);
}

uint64_t sub_100341C80(char a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v7 = qword_100618C60;
  sub_1004B6DF4();
  v8 = sub_1004BBED4();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_100341E84@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = sub_1004B87C4();
  v2 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v49 - v4;
  v5 = *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = sub_100003ABC(&qword_10060DDF8, &qword_1004E12F0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = sub_100003ABC(&qword_10060DE00, &qword_1004E12F8) - 8;
  __chkstk_darwin();
  v13 = &v49 - v12;
  v49 = sub_100003ABC(&qword_10060DE08, &unk_1004E1300);
  __chkstk_darwin();
  v50 = &v49 - v14;
  sub_10034BD68(v1, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10034BDD4(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v55 = v1;
  sub_100003ABC(&qword_10060DE18, &qword_1004E1310);
  sub_10034C6F4();
  sub_1004BA474();
  sub_1004BA754();
  sub_1004B8E94();
  (*(v8 + 32))(v13, v10, v7);
  v17 = &v13[*(v11 + 44)];
  v18 = v61;
  *(v17 + 4) = v60;
  *(v17 + 5) = v18;
  *(v17 + 6) = v62;
  v19 = v57;
  *v17 = v56;
  *(v17 + 1) = v19;
  v20 = v59;
  *(v17 + 2) = v58;
  *(v17 + 3) = v20;
  if (sub_100342C44())
  {
    if (qword_100609C90 != -1)
    {
      swift_once();
    }

    v21 = qword_10060D248;
  }

  else
  {
    v22 = [objc_opt_self() tertiaryLabelColor];
    v21 = sub_1004BA304();
  }

  KeyPath = swift_getKeyPath();
  v24 = v50;
  sub_100025B04(v13, v50, &qword_10060DE00, &qword_1004E12F8);
  v25 = (v24 + *(v49 + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  v26 = v51;
  sub_100342D9C(v51);
  v28 = v52;
  v27 = v53;
  (*(v2 + 104))(v52, enum case for ColorScheme.light(_:), v53);
  v29 = sub_1004B87B4();
  v30 = *(v2 + 8);
  v30(v28, v27);
  v30(v26, v27);
  v31 = objc_opt_self();
  v32 = &selRef_systemBackgroundColor;
  if ((v29 & 1) == 0)
  {
    v32 = &selRef_secondarySystemBackgroundColor;
  }

  v33 = [v31 *v32];
  v34 = sub_1004BA304();
  v35 = sub_100003ABC(&qword_10060DE68, &qword_1004E1368);
  v36 = v54;
  v37 = (v54 + *(v35 + 36));
  v38 = sub_100003ABC(&qword_10060DE70, &qword_1004E1370);
  v39 = v37 + *(v38 + 52);
  v40 = *(sub_1004B8E74() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = sub_1004B92C4();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #10.0 }

  *v39 = _Q0;
  *v37 = v34;
  *(v37 + *(v38 + 56)) = 256;
  return sub_100025B04(v24, v36, &qword_10060DE08, &unk_1004E1300);
}

__n128 sub_10034249C@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003ABC(&qword_10060DE40, &qword_1004E1320) - 8;
  __chkstk_darwin();
  v6 = v16 - v5;
  v7 = sub_100003ABC(&qword_10060DE30, &qword_1004E1318) - 8;
  __chkstk_darwin();
  v9 = v16 - v8;
  *v6 = sub_1004B9344();
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = 0;
  sub_100342694(a1, &v6[*(v4 + 52)]);
  if (*a1)
  {
    v10 = 2.5;
  }

  else
  {
    v10 = 0.0;
  }

  sub_100025B04(v6, v9, &qword_10060DE40, &qword_1004E1320);
  v11 = &v9[*(v7 + 44)];
  *v11 = 0;
  *(v11 + 1) = v10;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v9, a2, &qword_10060DE30, &qword_1004E1318);
  v12 = a2 + *(sub_100003ABC(&qword_10060DE18, &qword_1004E1310) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_100342694@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = sub_100003ABC(&qword_10060DE78, &qword_1004E1378);
  __chkstk_darwin();
  v4 = &v46[-v3];
  v5 = sub_100003ABC(&qword_10060DE80, &qword_1004E1380);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v7 = &v46[-v6];
  v8 = sub_100003ABC(&qword_10060DE88, &qword_1004E1388);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin();
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v46[-v10];
  v47 = *a1;
  v12 = sub_1004BA324();
  v13 = sub_1004B9A44();
  KeyPath = swift_getKeyPath();
  v56 = v12;
  v57 = KeyPath;
  v58 = v13;
  sub_1004B9AA4();
  v15 = sub_100003ABC(&qword_10060DE90, &unk_1004E13C0);
  v16 = sub_10034C900();
  sub_1004B9DE4();

  if (qword_100609CA0 != -1)
  {
    swift_once();
  }

  v17 = sub_100007084(v50, qword_10060D268);
  sub_10000F778(v17, v4, &qword_10060DE78, &qword_1004E1378);
  v56 = v15;
  v57 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1000206D4(&qword_10060DEB0, &qword_10060DE78, &qword_1004E1378, &protocol conformance descriptor for PartialRangeThrough<A>);
  v55 = v11;
  v18 = v49;
  sub_1004B9EE4();
  sub_100007214(v4, &qword_10060DE78, &qword_1004E1378);
  (*(v48 + 8))(v7, v18);
  v56 = sub_100341C80(v47);
  v57 = v19;
  sub_1002C4D1C();
  v20 = sub_1004B9D84();
  v22 = v21;
  v24 = v23;
  if (qword_100609C58 != -1)
  {
    swift_once();
  }

  v25 = sub_1004B9CE4();
  v27 = v26;
  v29 = v28;

  sub_10002FA24(v20, v22, v24 & 1);

  if (qword_100609C60 != -1)
  {
    swift_once();
  }

  v30 = sub_1004B9C74();
  v32 = v31;
  v34 = v33;
  v50 = v35;
  sub_10002FA24(v25, v27, v29 & 1);

  v36 = v51;
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v53;
  v38(v51, v55, v53);
  v40 = v54;
  *v54 = 0;
  *(v40 + 8) = 1;
  v41 = sub_100003ABC(&qword_10060DEB8, &unk_1004E13D0);
  v38(v40 + v41[12], v36, v39);
  v42 = v40 + v41[16];
  *v42 = v30;
  *(v42 + 1) = v32;
  v34 &= 1u;
  v42[16] = v34;
  *(v42 + 3) = v50;
  v43 = v40 + v41[20];
  *v43 = 0x4020000000000000;
  v43[8] = 0;
  sub_10002FA14(v30, v32, v34);
  v44 = *(v37 + 8);

  v44(v55, v39);
  sub_10002FA24(v30, v32, v34);

  return (v44)(v36, v39);
}

uint64_t sub_100342C44()
{
  v1 = sub_1004B9184();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1004BC994();
    v8 = sub_1004B9904();
    sub_1004B7F84(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004B9174();
    swift_getAtKeyPath();
    v9 = sub_10034C67C(v6, 0);
    (*(v2 + 8))(v4, v1, v9);
    LOBYTE(v6) = v11[15];
  }

  return v6 & 1;
}

uint64_t sub_100342D9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B9184();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DE10, &qword_1004DA108);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_10000F778(v1 + *(v9 + 24), v8, &qword_10060DE10, &qword_1004DA108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004B87C4();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_1004BC994();
    v13 = sub_1004B9904();
    sub_1004B7F84(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004B9174();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_100342FA8(char a1, uint64_t a2, uint64_t a3)
{
  sub_1004BA7A4();
  sub_1004B8B24();

  return result;
}

uint64_t sub_100343034@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_100003ABC(&qword_10060DE78, &qword_1004E1378);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v16 = sub_1004BA324();
  sub_1004B9A34();
  v6 = sub_1004B9A54();

  KeyPath = swift_getKeyPath();
  v8 = sub_1004BA2B4();
  v9 = swift_getKeyPath();
  if (qword_100609C78 != -1)
  {
    swift_once();
  }

  sub_1004BA754();
  sub_1004B8994();
  if (a1)
  {
    v10 = sub_1004BA264();
  }

  else
  {
    v10 = sub_1004BA2A4();
  }

  v11 = v10;
  v12 = sub_1004B9964();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_100609CA0 != -1)
  {
    swift_once();
  }

  v13 = sub_100007084(v3, qword_10060D268);
  sub_10000F778(v13, v5, &qword_10060DE78, &qword_1004E1378);
  sub_100003ABC(&qword_10060E5B0, &qword_1004E1D10);
  sub_100350340();
  sub_1000206D4(&qword_10060DEB0, &qword_10060DE78, &qword_1004E1378, &protocol conformance descriptor for PartialRangeThrough<A>);
  sub_1004B9EE4();
  sub_100007214(v5, &qword_10060DE78, &qword_1004E1378);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_100007214(v21, &qword_10060E5B0, &qword_1004E1D10);
}

uint64_t sub_100343318@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1004B9594();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003ABC(&qword_10060E5A0, &qword_1004E1D00);
  v6 = *(v22 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  sub_100003ABC(&qword_10060E5A8, &qword_1004E1D08);
  v13 = sub_100003B68(&qword_10060E5B0, &qword_1004E1D10);
  v14 = sub_100003B68(&qword_10060DE78, &qword_1004E1378);
  v15 = sub_100350340();
  v16 = sub_1000206D4(&qword_10060DEB0, &qword_10060DE78, &qword_1004E1378, &protocol conformance descriptor for PartialRangeThrough<A>);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1004BA474();
  sub_1004B9584();
  sub_1000206D4(&qword_10060E600, &qword_10060E5A0, &qword_1004E1D00, &protocol conformance descriptor for Button<A>);
  sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  sub_1004B9E14();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(sub_100003ABC(&qword_10060E608, &qword_1004E1D38) + 36));
  sub_100003ABC(&qword_10060E610, &qword_1004E1D40);
  sub_1004B8EB4();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v1);

  Collaboration.Management.View.init(model:)(v3);
  v5 = sub_1004B93F4();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = sub_1004B93F4();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_100343AB8(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_100343960(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_100343AB8(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_100343A18(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100343AB8(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100343AB8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (qword_100609B80 != -1)
    {
      swift_once();
    }

    v14 = *&qword_100618FC8 + *&qword_100618FC8;
    if (v11 + *&qword_100618FC8 + *&qword_100618FC8 > *&a2)
    {
      v11 = *&a2 - (*&qword_100618FC8 + *&qword_100618FC8);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_100343D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C4EC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100343D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C4EC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100343DE4(uint64_t a1)
{
  sub_10034C4EC();
  sub_1004B9834();
  __break(1u);
}

char *sub_100343E0C()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(v0 + 16);
  v23[0] = *v0;
  v23[1] = v7;
  v24 = *(v0 + 32);
  sub_10034C460(v0, v22);
  sub_1004BBDA4();
  v8 = *(v2 + 16);
  v8(v4, v6, v1);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v9 = qword_100618C60;
  sub_1004B6DF4();
  v10 = v9;
  v21 = sub_1004BBED4();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v6, v1);
  sub_1004BBDA4();
  v8(v4, v6, v1);
  sub_1004B6DF4();
  v14 = sub_1004BBED4();
  v16 = v15;
  v13(v6, v1);
  v18 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController(0, v17));
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v23, v21, v12, v14, v16);
}

uint64_t sub_100344110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C498();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100344174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C498();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003441D8(uint64_t a1)
{
  sub_10034C498();
  sub_1004B9834();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_100025B04(a3, a4 + *(v6 + 20), &unk_10060EBE0, &unk_1004DBE60);
}

uint64_t sub_100344264@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B9184();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060D3D0, &qword_1004D9FE0);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = type metadata accessor for PlaylistCurators.View(0);
  sub_10000F778(v1 + *(v9 + 20), v8, &qword_10060D3D0, &qword_1004D9FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100025B04(v8, a1, &qword_10060A208, &qword_1004E0AA0);
  }

  v11 = sub_1004BC994();
  v12 = sub_1004B9904();
  sub_1004B7F84(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_1004B9174();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100003ABC(&qword_10060D3D0, &qword_1004D9FE0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  sub_100003ABC(&qword_10060D3D8, &qword_1004E0A70);
  __chkstk_darwin();
  v2 = &v5 - v1;
  *v2 = sub_1004B9204();
  *(v2 + 1) = 0;
  v2[16] = 0;
  v3 = sub_100003ABC(&qword_10060D3E0, &qword_1004E0A78);
  sub_1003445EC(v0, &v2[*(v3 + 44)]);
  sub_1000206D4(&qword_10060D3E8, &qword_10060D3D8, &qword_1004E0A70, &protocol conformance descriptor for HStack<A>);
  sub_1004B9DA4();
  return sub_100007214(v2, &qword_10060D3D8, &qword_1004E0A70);
}

uint64_t sub_1003445EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1004B9664();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin();
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100003ABC(&unk_10060D3F0, &qword_1004E0A98);
  __chkstk_darwin();
  v6 = &v43 - v5;
  sub_100003ABC(&qword_10060A208, &qword_1004E0AA0);
  __chkstk_darwin();
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v43 - v8;
  __chkstk_darwin();
  v52 = &v43 - v10;
  sub_100003ABC(&qword_10060DF40, &qword_1004E15B8);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = sub_100003ABC(&qword_10060DF48, &qword_1004E15C0);
  __chkstk_darwin();
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v43 - v15;
  __chkstk_darwin();
  v18 = &v43 - v17;
  *v12 = sub_1004B9204();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v19 = sub_100003ABC(&qword_10060DF50, &qword_1004E15C8);
  sub_100344CD0(a1, &v12[*(v19 + 44)]);
  if (qword_100609BA8 != -1)
  {
    swift_once();
  }

  v20 = unk_100619010;
  v21 = byte_100619018;
  if (byte_100619018)
  {
    v22 = *&static Corner.medium;
  }

  else
  {
    v22 = *&static Corner.medium + -3.0;
  }

  sub_100025B04(v12, v16, &qword_10060DF40, &qword_1004E15B8);
  v23 = &v16[*(v13 + 36)];
  *v23 = v22;
  *(v23 + 1) = v20;
  v23[16] = v21;
  *(v23 + 3) = 0x4008000000000000;
  *(v23 + 4) = 0;
  *(v23 + 20) = 257;
  sub_100025B04(v16, v18, &qword_10060DF48, &qword_1004E15C0);
  v24 = v52;
  sub_100344264(v52);
  v26 = v48;
  v25 = v49;
  (*(v48 + 104))(v9, enum case for UserInterfaceSizeClass.regular(_:), v49);
  (*(v26 + 56))(v9, 0, 1, v25);
  v27 = *(v47 + 48);
  sub_10000F778(v24, v6, &qword_10060A208, &qword_1004E0AA0);
  sub_10000F778(v9, &v6[v27], &qword_10060A208, &qword_1004E0AA0);
  v28 = *(v26 + 48);
  v29 = v28(v6, 1, v25);
  v47 = v18;
  if (v29 != 1)
  {
    v44 = v9;
    v32 = v46;
    sub_10000F778(v6, v46, &qword_10060A208, &qword_1004E0AA0);
    v33 = v25;
    if (v28(&v6[v27], 1, v25) != 1)
    {
      v34 = &v6[v27];
      v35 = v45;
      (*(v26 + 32))(v45, v34, v25);
      sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v36 = v32;
      v30 = sub_1004BBD84();
      v37 = *(v26 + 8);
      v37(v35, v33);
      sub_100007214(v44, &qword_10060A208, &qword_1004E0AA0);
      sub_100007214(v52, &qword_10060A208, &qword_1004E0AA0);
      v37(v36, v33);
      v31 = v47;
      sub_100007214(v6, &qword_10060A208, &qword_1004E0AA0);
      goto LABEL_13;
    }

    sub_100007214(v44, &qword_10060A208, &qword_1004E0AA0);
    sub_100007214(v52, &qword_10060A208, &qword_1004E0AA0);
    (*(v26 + 8))(v32, v25);
    goto LABEL_11;
  }

  sub_100007214(v9, &qword_10060A208, &qword_1004E0AA0);
  sub_100007214(v52, &qword_10060A208, &qword_1004E0AA0);
  if (v28(&v6[v27], 1, v25) != 1)
  {
LABEL_11:
    sub_100007214(v6, &unk_10060D3F0, &qword_1004E0A98);
    v30 = 0;
    v31 = v47;
    goto LABEL_13;
  }

  sub_100007214(v6, &qword_10060A208, &qword_1004E0AA0);
  v30 = 1;
  v31 = v47;
LABEL_13:
  v38 = v50;
  sub_10000F778(v31, v50, &qword_10060DF48, &qword_1004E15C0);
  v39 = v31;
  v40 = v51;
  sub_10000F778(v38, v51, &qword_10060DF48, &qword_1004E15C0);
  v41 = v40 + *(sub_100003ABC(&qword_10060DF58, &unk_1004E15D0) + 48);
  *v41 = 0;
  *(v41 + 8) = v30 & 1;
  *(v41 + 9) = (v30 & 1) == 0;
  sub_100007214(v39, &qword_10060DF48, &qword_1004E15C0);
  return sub_100007214(v38, &qword_10060DF48, &qword_1004E15C0);
}

uint64_t sub_100344CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  sub_100003ABC(&qword_10060DF60, &qword_1004DFD10);
  __chkstk_darwin();
  v66 = &v51[-v3];
  v4 = sub_1004B9B54();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v63 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004B9D34();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin();
  v57 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_100003ABC(&qword_10060DF68, &qword_1004E15E0) - 8;
  __chkstk_darwin();
  v65 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v56 = &v51[-v9];
  sub_100003ABC(&qword_10060A208, &qword_1004E0AA0);
  __chkstk_darwin();
  v11 = &v51[-v10];
  sub_100003ABC(&qword_10060DF70, &qword_1004E15E8);
  __chkstk_darwin();
  v62 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v51[-v13];
  sub_100344264(v11);
  v15 = sub_10034CFDC(v11);
  sub_100007214(v11, &qword_10060A208, &qword_1004E0AA0);
  *v14 = sub_1004B9204();
  v14[1] = v15;
  *(v14 + 16) = 0;
  v61 = v14;
  sub_100003ABC(&qword_10060DF78, &qword_1004E15F0);
  v58 = a1;
  sub_100345400(a1, v16);
  v70 = sub_1003467B4();
  v71 = v17;
  sub_1002C4D1C();
  v54 = sub_1004B9D84();
  v53 = v18;
  v55 = v19;
  v70 = v54;
  v71 = v18;
  v52 = v20 & 1;
  v72 = v20 & 1;
  v73 = v19;
  String.nonBreakingSpace.unsafeMutableAddressor();

  sub_1004BA324();

  v21 = sub_1004B9D94();
  v23 = v22;
  v25 = v24;
  v26 = sub_1004B9CB4();
  v28 = v27;
  v30 = v29;
  sub_10002FA24(v21, v23, v25 & 1);

  v31 = v57;
  sub_1004B9D24();
  sub_10002FA24(v26, v28, v30 & 1);

  v32 = v56;
  sub_1004B9E04();
  (*(v59 + 8))(v31, v60);
  sub_10002FA24(v54, v53, v52);

  KeyPath = swift_getKeyPath();
  v34 = v32 + *(sub_100003ABC(&qword_10060DF80, &qword_1004E1628) + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 1;
  *(v34 + 16) = 0;
  v35 = (v32 + *(sub_100003ABC(&qword_10060DF88, &qword_1004E1630) + 36));
  v36 = *(sub_100003ABC(&qword_10060DF90, &qword_1004E1638) + 28);
  v37 = enum case for Image.Scale.small(_:);
  v38 = sub_1004BA374();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  v39 = v63;
  PlaylistCurators.View.fontTextStyle.getter(v63);
  v40 = sub_1004B9A64();
  v41 = v66;
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  v42 = sub_1004B9AC4();
  sub_100007214(v41, &qword_10060DF60, &qword_1004DFD10);
  (*(v67 + 8))(v39, v68);
  v43 = swift_getKeyPath();
  v44 = (v32 + *(v64 + 44));
  *v44 = v43;
  v44[1] = v42;
  v46 = v61;
  v45 = v62;
  sub_10000F778(v61, v62, &qword_10060DF70, &qword_1004E15E8);
  v47 = v65;
  sub_10000F778(v32, v65, &qword_10060DF68, &qword_1004E15E0);
  v48 = v69;
  sub_10000F778(v45, v69, &qword_10060DF70, &qword_1004E15E8);
  v49 = sub_100003ABC(&qword_10060DF98, &qword_1004E1670);
  sub_10000F778(v47, v48 + *(v49 + 48), &qword_10060DF68, &qword_1004E15E0);
  sub_100007214(v32, &qword_10060DF68, &qword_1004E15E0);
  sub_100007214(v46, &qword_10060DF70, &qword_1004E15E8);
  sub_100007214(v47, &qword_10060DF68, &qword_1004E15E0);
  return sub_100007214(v45, &qword_10060DF70, &qword_1004E15E8);
}

uint64_t sub_100345400(uint64_t *a1, __n128 a2)
{
  v3 = *(type metadata accessor for PlaylistCurators.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_1002BD990(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  sub_1003D28E4(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  sub_10034BD68(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  sub_10034BDD4(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10034D59C;
  *(v13 + 24) = v12;
  sub_100003ABC(&qword_10060DFA0, &qword_1004E1698);
  sub_100003ABC(&qword_10060DFA8, &qword_1004E16A0);
  sub_1000206D4(&qword_10060DFB0, &qword_10060DFA0, &qword_1004E1698, &protocol conformance descriptor for [A]);
  sub_10034D6C8();
  return sub_1004BA654();
}

uint64_t sub_10034568C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_1003456F4(a2, a4);
    result = sub_100003ABC(&qword_10060DFA8, &qword_1004E16A0);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t sub_1003456F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v111 = a2;
  v2 = sub_1004BB634();
  v115 = *(v2 - 8);
  __chkstk_darwin();
  v104 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7D94();
  v109 = *(v4 - 8);
  v110 = v4;
  __chkstk_darwin();
  v113 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v81 - v6;
  __chkstk_darwin();
  v107 = &v81 - v7;
  __chkstk_darwin();
  v105 = &v81 - v8;
  v9 = sub_1004B7D04();
  v114 = *(v9 - 8);
  __chkstk_darwin();
  v116 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v85 + 64);
  __chkstk_darwin();
  v87 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v81 - v12;
  sub_100003ABC(&qword_10060DD10, &qword_1004DEE10);
  __chkstk_darwin();
  v91 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v81 - v14;
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v81 - v17;
  __chkstk_darwin();
  v19 = &v81 - v18;
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v89 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v81 - v21;
  __chkstk_darwin();
  v23 = &v81 - v22;
  v102 = sub_100003ABC(&unk_10060E030, &qword_1004E16D8);
  v100 = *(v102 - 8);
  __chkstk_darwin();
  v96 = &v81 - v24;
  v90 = sub_100003ABC(&qword_10060DFF8, &qword_1004E16C0);
  __chkstk_darwin();
  v97 = &v81 - v25;
  v94 = sub_100003ABC(&qword_10060DFE8, &qword_1004E16B8);
  __chkstk_darwin();
  v95 = &v81 - v26;
  v93 = sub_100003ABC(&qword_10060DFD8, &qword_1004E16B0);
  __chkstk_darwin();
  v101 = &v81 - v27;
  v98 = sub_100003ABC(&qword_10060DFC8, &qword_1004E16A8);
  __chkstk_darwin();
  v99 = &v81 - v28;
  sub_100003ABC(&qword_10060A208, &qword_1004E0AA0);
  __chkstk_darwin();
  v30 = &v81 - v29;
  sub_100344264(&v81 - v29);
  v31 = sub_10034DA1C(v30);
  sub_100007214(v30, &qword_10060A208, &qword_1004E0AA0);
  v32 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_10000F778(v108 + *(v32 + 20), v19, &unk_10060EBE0, &unk_1004DBE60);
  sub_1004BB5B4();
  v33 = *(v115 + 56);
  v108 = v2;
  v83 = v115 + 56;
  v82 = v33;
  v33(v15, 0, 1, v2);
  v34 = sub_1004BB6C4();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v19, 1, v34) == 1)
  {
    sub_100007214(v15, &qword_10060DD10, &qword_1004DEE10);
    sub_100007214(v19, &unk_10060EBE0, &unk_1004DBE60);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  }

  else
  {
    (*(v35 + 32))(v23, v19, v34);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100025B04(v15, &v23[*(v36 + 20)], &qword_10060DD10, &qword_1004DEE10);
    (*(*(v36 - 8) + 56))(v23, 0, 1, v36);
  }

  v37 = sub_100003ABC(&unk_10060DD30, &qword_1004DEE18);
  v38 = v112;
  (*(*(v37 - 8) + 56))(v112, 8, 11, v37);
  v86 = v31;
  v124 = 0;
  v122 = 0;
  v120 = 1;
  v39 = *(v114 + 104);
  v106 = v9;
  v39(v116, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v9);
  v40 = v87;
  sub_10034BD68(v38, v87, type metadata accessor for ArtworkImage.Placeholder);
  v41 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_10034BDD4(v40, v43 + v41, type metadata accessor for ArtworkImage.Placeholder);
  v44 = v43 + v42;
  *v44 = v31;
  *(v44 + 8) = v124;
  *(v44 + 9) = *v123;
  *(v44 + 12) = *&v123[3];
  *(v44 + 16) = v31;
  *(v44 + 24) = v122;
  *(v44 + 25) = *v121;
  *(v44 + 28) = *&v121[3];
  *(v44 + 32) = 0;
  *(v44 + 40) = v120;
  *(v44 + 41) = 1;
  v45 = v84;
  sub_10000F778(v23, v84, &qword_10060EF20, &qword_1004D9F00);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v36 - 8) + 48);
  v47 = v23;
  if (v46(v45, 1, v36) == 1)
  {
    sub_100007214(v45, &qword_10060EF20, &qword_1004D9F00);
    v48 = 1;
    v49 = v88;
  }

  else
  {
    v49 = v88;
    (*(v35 + 16))(v88, v45, v34);
    sub_10034C2B8(v45, type metadata accessor for ArtworkImage.ViewModel);
    v48 = 0;
  }

  (*(v35 + 56))(v49, v48, 1, v34);
  sub_10000F778(v49, v92, &unk_10060EBE0, &unk_1004DBE60);
  v50 = v105;
  sub_1004B7D54();
  sub_100007214(v49, &unk_10060EBE0, &unk_1004DBE60);
  sub_1004B7D34();
  v92 = v47;
  v51 = v89;
  sub_10000F778(v47, v89, &qword_10060EF20, &qword_1004D9F00);
  v52 = v46(v51, 1, v36);
  v53 = v106;
  if (v52 == 1)
  {
    sub_100007214(v51, &qword_10060EF20, &qword_1004D9F00);
    v54 = v91;
    v55 = v108;
    v82(v91, 1, 1, v108);
    v56 = v115;
    v57 = v104;
  }

  else
  {
    v54 = v91;
    sub_10000F778(v51 + *(v36 + 20), v91, &qword_10060DD10, &qword_1004DEE10);
    sub_10034C2B8(v51, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v115;
    v55 = v108;
    v58 = (*(v115 + 48))(v54, 1, v108);
    v57 = v104;
    if (v58 != 1)
    {
      (*(v56 + 32))(v104, v54, v55);
      goto LABEL_15;
    }
  }

  if (qword_100609C08 != -1)
  {
    swift_once();
  }

  v59 = sub_100007084(v55, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v57, v59, v55);
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    sub_100007214(v54, &qword_10060DD10, &qword_1004DEE10);
  }

LABEL_15:
  v60 = v103;
  v61 = v113;
  sub_1004B7D14();
  (*(v56 + 8))(v57, v55);
  v62 = v110;
  v63 = *(v109 + 8);
  v63(v61, v110);
  v64 = v107;
  sub_1004B7D44();
  v63(v60, v62);
  sub_100003ABC(&qword_10060C998, &qword_1004DF240);
  sub_1003169C4();
  v65 = v96;
  sub_1004B7D24();

  v63(v64, v62);
  v63(v50, v62);
  (*(v114 + 8))(v116, v53);
  sub_10034C2B8(v112, type metadata accessor for ArtworkImage.Placeholder);
  sub_100007214(v92, &qword_10060EF20, &qword_1004D9F00);
  v66 = v97;
  v67 = &v97[*(v90 + 36)];
  v68 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v67 + v68) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68, &qword_1004D9EC0);
  swift_storeEnumTagMultiPayload();
  *v67 = sub_100347018;
  v67[1] = 0;
  (*(v100 + 32))(v66, v65, v102);
  sub_1004BA754();
  sub_1004B8994();
  v69 = v95;
  sub_100025B04(v66, v95, &qword_10060DFF8, &qword_1004E16C0);
  v70 = (v69 + *(v94 + 36));
  v71 = v118;
  *v70 = v117;
  v70[1] = v71;
  v70[2] = v119;
  v72 = v101;
  sub_100025B04(v69, v101, &qword_10060DFE8, &qword_1004E16B8);
  v73 = v72 + *(v93 + 36);
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 16) = 2;
  if (qword_100609CB0 != -1)
  {
    swift_once();
  }

  v74 = qword_10060D288;
  v75 = qword_10060D290;
  v76 = byte_10060D298;
  v77 = v72;
  v78 = v99;
  sub_100025B04(v77, v99, &qword_10060DFD8, &qword_1004E16B0);
  v79 = v78 + *(v98 + 36);
  *v79 = v74;
  *(v79 + 8) = v75;
  *(v79 + 16) = v76;
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 40) = 2;
  sub_100025B04(v78, v111, &qword_10060DFC8, &qword_1004E16A8);
}

uint64_t sub_1003467B4()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v15 - v5;
  sub_1004BBDF4();
  __chkstk_darwin();
  type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v0 + 16);
  if (v10)
  {
    sub_10034BD68(*v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v11 = v10 - 1;
    if (v11)
    {
      sub_1004BBDE4();
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      sub_1004BBDD4(v16);
      sub_1004BBDC4(*v9);
      v17._countAndFlagsBits = 2106912;
      v17._object = 0xE300000000000000;
      sub_1004BBDD4(v17);
      v15[1] = v11;
      sub_1004BBDB4();
      v18._countAndFlagsBits = 0x7328726568744F20;
      v18._object = 0xE900000000000029;
      sub_1004BBDD4(v18);
      sub_1004BBE04();
      (*(v2 + 16))(v4, v6, v1);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v13 = qword_100618C60;
      sub_1004B6DF4();
      countAndFlagsBits = sub_1004BBED4();
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      countAndFlagsBits = v9->_countAndFlagsBits;
    }

    sub_10034C2B8(v9, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1004B9664();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&unk_10060D3F0, &qword_1004E0A98) - 8;
  __chkstk_darwin();
  v6 = &v23 - v5;
  sub_100003ABC(&qword_10060A208, &qword_1004E0AA0);
  __chkstk_darwin();
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  __chkstk_darwin();
  v11 = &v23 - v10;
  sub_100344264(&v23 - v10);
  (*(v2 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v9, 0, 1, v1);
  v12 = *(v4 + 56);
  sub_10000F778(v11, v6, &qword_10060A208, &qword_1004E0AA0);
  sub_10000F778(v9, &v6[v12], &qword_10060A208, &qword_1004E0AA0);
  v13 = *(v2 + 48);
  if (v13(v6, 1, v1) == 1)
  {
    sub_100007214(v9, &qword_10060A208, &qword_1004E0AA0);
    sub_100007214(v11, &qword_10060A208, &qword_1004E0AA0);
    if (v13(&v6[v12], 1, v1) == 1)
    {
      sub_100007214(v6, &qword_10060A208, &qword_1004E0AA0);
LABEL_9:
      v14 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_10000F778(v6, v25, &qword_10060A208, &qword_1004E0AA0);
  if (v13(&v6[v12], 1, v1) == 1)
  {
    sub_100007214(v9, &qword_10060A208, &qword_1004E0AA0);
    sub_100007214(v11, &qword_10060A208, &qword_1004E0AA0);
    (*(v2 + 8))(v25, v1);
LABEL_6:
    sub_100007214(v6, &unk_10060D3F0, &qword_1004E0A98);
    goto LABEL_7;
  }

  v15 = &v6[v12];
  v16 = v24;
  (*(v2 + 32))(v24, v15, v1);
  sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = v25;
  v18 = sub_1004BBD84();
  v19 = *(v2 + 8);
  v19(v16, v1);
  sub_100007214(v9, &qword_10060A208, &qword_1004E0AA0);
  sub_100007214(v11, &qword_10060A208, &qword_1004E0AA0);
  v19(v17, v1);
  sub_100007214(v6, &qword_10060A208, &qword_1004E0AA0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v20 = *v14;
  v21 = sub_1004B9B54();
  return (*(*(v21 - 8) + 104))(v26, v20, v21);
}

uint64_t sub_100347018(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  v5[3] = &type metadata for Color;
  v5[4] = &protocol witness table for Color;
  v5[0] = sub_1004BA304();
  return sub_100047A5C(v5, a1 + 40, &qword_10060E040, &unk_1004E1710);
}

void sub_100347098()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_100347160;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100399BF8;
  v3[3] = &unk_1005C2A50;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_10060D280 = v2;
}

id sub_100347160(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_100347200()
{
  if (qword_100609CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_10060D280;
  result = sub_1004BA224();
  qword_10060D288 = result;
  qword_10060D290 = 0x3FF0000000000000;
  byte_10060D298 = 1;
  return result;
}

double PlaylistCurators.ViewController.configuration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = sub_1004B9404();
  *v5 = a1;

  return v4(v7, 0);
}

uint64_t (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1003473D4;
}

void sub_1003473D4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = sub_1004B9404();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for PlaylistCurators.View(0) - 8;
  __chkstk_darwin();
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v2);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  sub_100003ABC(&qword_10060D3D0, &qword_1004D9FE0);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return sub_1004B93F4();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1, __n128 a2)
{
  type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  sub_100003ABC(&qword_10060D3D0, &qword_1004D9FE0);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return sub_1004B93F4();
}

id sub_1003476E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003479FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClearBackground.Controller(0, a2);
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

uint64_t sub_100347A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C40C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100347A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C40C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100347B00(uint64_t a1)
{
  sub_10034C40C();
  sub_1004B9834();
  __break(1u);
}

uint64_t sub_100347B28(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_100347BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004BB7D4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v31 = a1;
  v10 = sub_1004BBCD4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10034A084(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v19 = sub_1004BBD84();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100347E48();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1003486F8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_100347E48()
{
  v1 = v0;
  v2 = sub_1004BB7D4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DEE0, &qword_1004E1400);
  v6 = *v0;
  v7 = sub_1004BD3B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_100348080(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1004BB7D4();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003ABC(&qword_10060DEE0, &qword_1004E1400);
  v7 = sub_1004BD3C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_1004BBCD4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_10034839C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1004BB7D4();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100003ABC(&qword_10060DEE0, &qword_1004E1400);
  v6 = sub_1004BD3C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_1004BBCD4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1003486F8(int64_t a1)
{
  v3 = sub_1004BB7D4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1004BD2F4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
        v23 = sub_1004BBCD4();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_100348A00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1004BB7D4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v33 = a2;
  v11 = sub_1004BBCD4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10034A084(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_1004BBD84();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100348CE0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100348CE0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1004BB7D4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10034839C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100347E48();
      goto LABEL_12;
    }

    sub_100348080(v11 + 1);
  }

  v13 = *v3;
  sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v14 = sub_1004BBCD4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10034A084(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v22 = sub_1004BBD84();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

uint64_t sub_100348F84(uint64_t a1)
{
  sub_100003ABC(&qword_10060E4B8, &qword_1004E1B50);
  __chkstk_darwin();
  sub_10000F778(a1, &v4 - v2, &qword_10060E4B8, &qword_1004E1B50);
  return sub_1004B9044();
}

uint64_t sub_10034902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004BB6C4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = sub_100003ABC(&qword_10060E048, &qword_1004E23F0);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 == *a2 || (v13 = sub_1004BD9C4(), result = 0, (v13 & 1) != 0))
  {
    v22 = v7;
    v15 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v16 = *(v10 + 48);
    sub_10000F778(a1 + v15, v12, &unk_10060EBE0, &unk_1004DBE60);
    sub_10000F778(a2 + v15, &v12[v16], &unk_10060EBE0, &unk_1004DBE60);
    v17 = *(v5 + 48);
    if (v17(v12, 1, v4) == 1)
    {
      if (v17(&v12[v16], 1, v4) == 1)
      {
        sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
        return 1;
      }
    }

    else
    {
      sub_10000F778(v12, v9, &unk_10060EBE0, &unk_1004DBE60);
      if (v17(&v12[v16], 1, v4) != 1)
      {
        v18 = v22;
        (*(v5 + 32))(v22, &v12[v16], v4);
        sub_10034A084(&qword_10060E050, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v19 = sub_1004BBD84();
        v20 = *(v5 + 8);
        v20(v18, v4);
        v20(v9, v4);
        sub_100007214(v12, &unk_10060EBE0, &unk_1004DBE60);
        return (v19 & 1) != 0;
      }

      (*(v5 + 8))(v9, v4);
    }

    sub_100007214(v12, &qword_10060E048, &qword_1004E23F0);
    return 0;
  }

  return result;
}

uint64_t sub_10034946C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v62 = a1;
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v64 = &v54 - v4;
  sub_100003ABC(&qword_10060DEE8, &qword_1004E1418);
  __chkstk_darwin();
  v56 = &v54 - v5;
  v66 = sub_1004BBA84();
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v60 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v6;
  __chkstk_darwin();
  v59 = &v54 - v7;
  v58 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v57 = *(v58 - 1);
  __chkstk_darwin();
  v9 = &v54 - v8;
  v55 = sub_100003ABC(&qword_10060D2D0, &qword_1004E08D8);
  v10 = *(v55 - 8);
  __chkstk_darwin();
  v12 = &v54 - v11;
  v13 = sub_100003ABC(&qword_10060D2B8, &qword_1004E08D0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v54 - v15;
  v17 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v69[0] = _swiftEmptyArrayStorage;
  sub_100003ABC(&qword_10060D2A0, &qword_1004E08C0);
  sub_1004B8564();
  v18 = *(v14 + 32);
  v18(v3 + v17, v16, v13);
  v19 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v69[0] = _swiftEmptyArrayStorage;
  sub_1004B8564();
  v18(v3 + v19, v16, v13);
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v69[0] = &_swiftEmptySetSingleton;
  sub_100003ABC(&qword_10060D2A8, &qword_1004E08C8);
  sub_1004B8564();
  (*(v10 + 32))(v3 + v20, v12, v55);
  v21 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v69[0]) = 0;
  sub_1004B8564();
  v22 = *(v57 + 32);
  v23 = v58;
  v22(v3 + v21, v9, v58);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v69[0]) = 0;
  sub_1004B8564();
  v22(v3 + v24, v9, v23);
  v25 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v69);
  sub_100051DEC(v69);
  v68 = BYTE1(v69[0]);
  sub_1004B8564();
  v22(v3 + v25, v9, v23);
  v26 = v61;
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v28 = sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v57 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v62;
  v29 = v65;
  v30 = *(v65 + 16);
  v31 = v59;
  v32 = v66;
  v30(v59, v26, v66);
  swift_beginAccess();
  v58 = v30;
  v30(v60, v31, v32);

  v33 = v32;
  sub_1004B8564();
  v34 = *(v29 + 8);
  v35 = v31;
  v62 = v29 + 8;
  v60 = v34;
  v34(v31, v33);
  swift_endAccess();
  v36 = v56;
  v37 = v26;
  sub_1004BB854();
  v38 = sub_1004BB844();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v36, 1, v38) == 1)
  {
    sub_100007214(v36, &qword_10060DEE8, &qword_1004E1418);
    v40 = 0;
  }

  else
  {
    v40 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v39 + 8))(v36, v38);
  }

  swift_beginAccess();
  v67 = v40 & 1;
  sub_1004B8564();
  swift_endAccess();
  v41 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v42 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v43 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver(0, v44);
  swift_allocObject();

  v45 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v41, v42, 1, 1, sub_10034FB78, v43);
  *(v3 + v57) = v45;

  v46 = sub_1004BC4B4();
  v47 = v64;
  (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
  v48 = v66;
  (v58)(v31, v37, v66);
  v49 = v65;
  v50 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v51 = (v63 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  (*(v49 + 32))(v52 + v50, v35, v48);
  *(v52 + v51) = v3;

  sub_1002E0EEC(0, 0, v47, &unk_1004E1B60, v52);

  v60(v37, v48);
  return v3;
}

unint64_t sub_100349E64()
{
  result = qword_10060D388;
  if (!qword_10060D388)
  {
    sub_100003B68(&qword_10060D380, &qword_1004E09C8);
    sub_1000206D4(&qword_10060D390, &qword_10060D398, &qword_1004E09D0, &protocol conformance descriptor for List<A, B>);
    sub_1000206D4(&qword_10060D3A0, &qword_10060D3A8, &qword_1004E09D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060D388);
  }

  return result;
}

void sub_100349F9C(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_10033D468(a1, a2);
}

uint64_t sub_10034A084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10034A124(uint64_t a1)
{
  result = sub_10034A084(&qword_10060D410, type metadata accessor for PlaylistCurators.View, &protocol conformance descriptor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_10034A194(uint64_t a1)
{
  sub_10034B5D4(319, &qword_10060D450, &qword_10060D2A0, &qword_1004E08C0, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_10034B5D4(319, &qword_10060D458, &qword_10060D2A8, &qword_1004E08C8, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_10034B940(319, &qword_10060D460, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_10034B9A4(319, &qword_10060D468, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_10034B5D4(319, qword_10060D470, &qword_10060EF20, &qword_1004D9F00, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10034A414(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100003ABC(&unk_10060D7C0, &unk_1004E0C38);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C1D8, &qword_1004DEB00);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100003ABC(&qword_10060D7D0, &qword_1004E0C48);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_10034A5B8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100003ABC(&unk_10060D7C0, &unk_1004E0C38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C1D8, &qword_1004DEB00);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100003ABC(&qword_10060D7D0, &qword_1004E0C48);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_10034A748(uint64_t a1)
{
  sub_10034A908(319);
  if (v1 <= 0x3F)
  {
    sub_10034B940(319, &qword_10060D848, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10034B940(319, &qword_10060D850, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10034B940(319, &qword_10060D858, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10034B5D4(319, qword_10060D860, &qword_10060D350, &qword_1004E09A0, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10034B9A4(319, &unk_10060C188, &type metadata accessor for State);
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

void sub_10034A908(uint64_t a1)
{
  if (!qword_10060D840)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_10034A084(&qword_10060D358, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
    v1 = sub_1004B8BA4();
    if (!v2)
    {
      atomic_store(v1, &qword_10060D840);
    }
  }
}

uint64_t sub_10034AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034AAD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&unk_10060EBE0, &unk_1004DBE60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034AB88(uint64_t a1)
{
  sub_10034B940(319, &qword_10060D970, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034AC48(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060D9A0, &qword_1004E0C70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10034AD18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060D9A0, &qword_1004E0C70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034ADC8(uint64_t a1)
{
  sub_10034B5D4(319, &unk_10060DA10, &qword_10060A208, &qword_1004E0AA0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034AEFC()
{
  sub_100003B68(&qword_10060D360, &qword_1004E09A8);
  sub_1000206D4(&unk_10060D3C0, &qword_10060D360, &qword_1004E09A8, &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034AFA8()
{
  sub_100003B68(&qword_10060D3D8, &qword_1004E0A70);
  sub_1000206D4(&qword_10060D3E8, &qword_10060D3D8, &qword_1004E0A70, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034B054(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1004BB7D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100003ABC(&qword_10060DAB8, &qword_1004E0CB8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100003ABC(&qword_10060C1D8, &qword_1004DEB00);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = sub_100003ABC(&qword_10060D7D0, &qword_1004E0C48);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_10034B248(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1004BB7D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100003ABC(&qword_10060DAB8, &qword_1004E0CB8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100003ABC(&qword_10060C1D8, &qword_1004DEB00);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_100003ABC(&qword_10060D7D0, &qword_1004E0C48);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_10034B448(uint64_t a1)
{
  sub_1004BB7D4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v2 <= 0x3F)
    {
      sub_10034B9A4(319, &unk_10060C188, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10034B5D4(319, &qword_10060DB28, &unk_10060DB30, &qword_1004DD160, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10034B940(319, &qword_10060D850, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_10034B940(319, &qword_10060D858, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
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

void sub_10034B5D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003B68(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10034B648(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10034B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060DB70, &qword_1004E0DD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034B778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060DB70, &qword_1004E0DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034B848(uint64_t a1)
{
  sub_100316910();
  if (v1 <= 0x3F)
  {
    sub_10034B940(319, &qword_10060DBE8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10034B9A4(319, &qword_10060DBF0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10034B940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10034B9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10034BA18()
{
  result = qword_10060DC28;
  if (!qword_10060DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC28);
  }

  return result;
}

unint64_t sub_10034BA70()
{
  result = qword_10060DC30;
  if (!qword_10060DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC30);
  }

  return result;
}

unint64_t sub_10034BAC8()
{
  result = qword_10060DC38;
  if (!qword_10060DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC38);
  }

  return result;
}

unint64_t sub_10034BB20()
{
  result = qword_10060DC40;
  if (!qword_10060DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC40);
  }

  return result;
}

unint64_t sub_10034BB98()
{
  result = qword_10060DC78;
  if (!qword_10060DC78)
  {
    sub_100003B68(&qword_10060DC48, &qword_1004E1140);
    sub_1000206D4(&qword_10060DC80, &qword_10060DC88, &qword_1004E1170, &protocol conformance descriptor for HStack<A>);
    sub_1000206D4(&qword_10060DC90, &qword_10060DC98, &qword_1004E1178, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC78);
  }

  return result;
}

unint64_t sub_10034BC7C()
{
  result = qword_10060EFB0;
  if (!qword_10060EFB0)
  {
    sub_100003B68(&qword_10060DCB0, &qword_1004E1180);
    sub_1000206D4(&qword_10060DCB8, &unk_10060DCC0, &qword_1004E1188, &protocol conformance descriptor for Button<A>);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0, &unk_1004E1190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EFB0);
  }

  return result;
}

uint64_t sub_10034BD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10034BDD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10034BE70()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_1004BB7D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_100003ABC(&qword_10060DAB8, &qword_1004E0CB8);

  v7 = v1[8];
  sub_100003ABC(&unk_10060D340, &qword_1004D9F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1004B8C94();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  sub_100003ABC(&unk_100609E90, &qword_1004D9FA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004B8AB4();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10034C200()
{
  result = qword_10060DDB8;
  if (!qword_10060DDB8)
  {
    sub_100003B68(&qword_10060DCF8, &qword_1004E1228);
    sub_1000206D4(&qword_10060DDC0, &qword_10060DDC8, &qword_1004E12E8, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDB8);
  }

  return result;
}

uint64_t sub_10034C2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10034C318(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002FA14(a1, a2, a3 & 1);
  }

  return result;
}

double sub_10034C35C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10034C374(result, a2, a3, a4);
  }

  return v5;
}

double sub_10034C374(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10002FA14(a1, a2, a3 & 1);

  return result;
}

double sub_10034C3B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002FA24(a1, a2, a3 & 1);
  }

  return result;
}

double sub_10034C3F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1003079CC(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_10034C40C()
{
  result = qword_10060DDE0;
  if (!qword_10060DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDE0);
  }

  return result;
}

unint64_t sub_10034C498()
{
  result = qword_10060DDE8;
  if (!qword_10060DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDE8);
  }

  return result;
}

unint64_t sub_10034C4EC()
{
  result = qword_10060DDF0;
  if (!qword_10060DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDF0);
  }

  return result;
}