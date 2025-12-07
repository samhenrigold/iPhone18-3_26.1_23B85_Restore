void sub_30C344(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30C178(v4);
}

void sub_30C3AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30EB40();
}

void sub_30C40C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_30EB44();
}

uint64_t sub_30C46C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_30EC74();

  return a1 & 1;
}

uint64_t sub_30C4B8()
{
  LODWORD(v1) = *(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource);
  if (v1 == 2)
  {
    v1 = *(v0 + qword_DFE528);
    swift_beginAccess();
    sub_30E554(v1 + 16, v3);
    LOBYTE(v1) = Search.Configuration.defaultSource.getter();
    sub_30E5B0(v3);
  }

  return v1 & 1;
}

double sub_30C53C(char a1)
{
  v38 = sub_AB3430();
  v37 = *(v38 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v36 = &v34 - v3;
  v4 = sub_208918();
  v5 = a1 & 1;
  v4[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_selectedSource] = v5;
  v6 = &v4[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_barText];
  swift_beginAccess();
  v6[24] = v5;
  v7 = v4;
  sub_294A9C();
  v8 = *(*&v7[OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView] + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
  v9 = *&v8[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources];
  v10 = v8;

  v11 = sub_469CF8(v5, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    [v10 setSelectedSegment:v11];
  }

  sub_30CEC8(v39);
  v40 = v5;
  sub_30CF2C(v39);
  v14 = sub_208918();
  v15 = sub_29324C();

  v16 = sub_30C4B8();
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  if (v16)
  {
    v17 = sub_ABB3C0();
  }

  else
  {
    v17 = 1;
  }

  *(v15 + 145) = v17 & 1;
  v18 = v15[4];
  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = 0;
    v21 = (v18 + 40);
    do
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
        if (byte_E71A90)
        {
          goto LABEL_23;
        }

LABEL_18:
        if (*(v15 + 145) & 1) != 0 && (sub_466F18())
        {
          v26 = v36;
          sub_AB3420();
          v27 = swift_allocObject();
          swift_weakInit();
          v28 = v37;
          v29 = v35;
          v30 = v38;
          (*(v37 + 16))(v35, v26, v38);
          v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
          v32 = swift_allocObject();
          *(v32 + 16) = v27;
          (*(v28 + 32))(v32 + v31, v29, v30);

          sub_48C6A0(sub_30E700, v32);
          (*(v28 + 8))(v26, v30);
        }

        goto LABEL_23;
      }

      v24 = *v21;
      v25 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v25 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_13;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_13:
          v22 = 0;
          goto LABEL_9;
        }
      }

      v22 = *(v15 + 145);
LABEL_9:
      ++v20;
      ObjectType = swift_getObjectType();
      (*(v24 + 16))(v22, ObjectType, v24);
      swift_unknownObjectRelease();
      v21 += 2;
    }

    while (v19 != v20);
  }

  if (qword_DE6D68 != -1)
  {
    goto LABEL_22;
  }

  if ((byte_E71A90 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_23:

  return result;
}

uint64_t *sub_30C9C8()
{
  v1 = qword_DFE530;
  if (*(v0 + qword_DFE530))
  {
    v2 = *(v0 + qword_DFE530);
  }

  else
  {
    v2 = sub_30CA30();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t *sub_30CA30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v1 = v5 - v0;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CB98(v5);
  Search.resultSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  RequestResponse.Revision.content.getter(v1);

  sub_475B48(v1, 2, v3);
  sub_12E1C(v1, &unk_E00050, &qword_B094D0);
  sub_30E4AC(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5C8, &unk_B094E0);
  swift_allocObject();
  return MetricsEvent.PageRender.init(pageProperties:)(v3);
}

double sub_30CB98@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v3 = &v16[-1] - v2;
  v4 = type metadata accessor for Search.ResultContext(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Search.resultSnapshotController.getter();
  v8 = RequestResponse.Controller.revision.getter();

  sub_30CEC8(&v15);
  v10 = v16[10];
  v9 = v16[11];

  sub_30E458(&v15);
  if ((*(v8 + 120) & 1) == 0)
  {
    if (sub_30C4B8())
    {
      v11 = sub_ABB3C0();

      if ((v11 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v12 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v13 = 2;
    goto LABEL_19;
  }

LABEL_2:
  RequestResponse.Revision.content.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_30EF74(v3, v7, type metadata accessor for Search.ResultContext);
    if (!*&v7[*(v4 + 32)])
    {
      sub_30EFDC(v7, type metadata accessor for Search.ResultContext);
      goto LABEL_16;
    }

    sub_15F84(&v7[*(v4 + 28)], &v15, &unk_E00070, &unk_B0A990);
    sub_30EFDC(v7, type metadata accessor for Search.ResultContext);
    if (v15)
    {
      sub_E8BA0(v16, a1);
      sub_30E500(&v15);
    }

    else
    {
      sub_12E1C(&v15, &unk_E00070, &unk_B0A990);
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    v13 = 1;
LABEL_19:
    *(a1 + 40) = v13;
    goto LABEL_20;
  }

  sub_12E1C(v3, &unk_E00050, &qword_B094D0);
LABEL_16:
  *a1 = 0;
  *(a1 + 40) = 0;
LABEL_20:

  return result;
}

double sub_30CEB0(uint64_t a1)
{
  *(v1 + qword_DFE530) = a1;

  return result;
}

double sub_30CEC8@<D0>(uint64_t a2@<X8>)
{
  v3 = Search.resultSnapshotController.getter();
  swift_beginAccess();
  sub_30E3FC((v3 + 2), a2);

  return result;
}

double sub_30CF2C(uint64_t a1)
{
  Search.resultSnapshotController.getter();
  sub_30E3FC(a1, v3);
  RequestResponse.Controller.request.setter(v3);
  sub_30E458(a1);

  return result;
}

double sub_30CFAC()
{
  v1 = v0;
  v2 = sub_208918();
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v8 != 0;
  }

  else
  {

    v9 = 0;
  }

  Search.recentlySearchedSnapshotController.getter();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(*(v1 + qword_DFE538));

  Search.resultSnapshotController.getter();
  if (*(v1 + qword_DFE538) != 1 || (*(v1 + qword_DFE518) & 1) == 0)
  {
    v9 = 0;
  }

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(v9);

  return result;
}

void sub_30D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_208918();
  if (!a4)
  {
  }

  v9 = v8;

  v10 = sub_AB9260();

  [v9 setText:v10];

  [sub_208918() resignFirstResponder];
  v11 = *(v4 + qword_DFE528);
  swift_beginAccess();
  sub_30E554(v11 + 16, v15);
  v12 = sub_30C4B8();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v15[80] = v12;
  v16 = a1;
  v17 = a2;
  v18 = 1;

  sub_160B4(v13, v19, &unk_E00060, &qword_B094F0);
  sub_30CF2C(v15);
  sub_30DF5C();
  sub_30D210();
}

void sub_30D210()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v3 = &v43 - v2;
  v4 = *(v0 + qword_DFE528);
  swift_beginAccess();
  v5 = *(*(v4 + 80) + 16);
  v6 = sub_208918();
  v7 = [v6 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12 == 0;
  }

  else
  {

    v13 = 1;
  }

  v14 = *(v1 + qword_DFE518);
  v15 = [sub_208918() isFirstResponder];
  if (v14 != 1)
  {
    [sub_208918() setShowsScopeBar:0 animated:1];
    return;
  }

  if (((v15 | v13) & 1) == 0)
  {
    Search.resultSnapshotController.getter();
    v17 = RequestResponse.Controller.revision.getter();

    RequestResponse.Revision.content.getter(v3);
    v18 = type metadata accessor for Search.ResultContext(0);
    if ((*(*(v18 - 8) + 48))(v3, 1, v18) == 1)
    {
      sub_12E1C(v3, &unk_E00050, &qword_B094D0);
      memset(v51, 0, 48);
    }

    else
    {
      sub_15F84(&v3[*(v18 + 28)], v51, &unk_E00070, &unk_B0A990);
      sub_30EFDC(v3, type metadata accessor for Search.ResultContext);
    }

    v19 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    sub_15F84(v51, v49, &unk_E00070, &unk_B0A990);
    v20 = *&v49[0];
    v21 = v19;
    if (v20)
    {
      v43 = v17;

      sub_30E500(v49);
      v22 = *(v20 + 16);
      if (v22)
      {
        v23 = v20 + 32;
        v24 = _swiftEmptyArrayStorage;
        do
        {
          sub_E8BA0(v23, &v46);
          sub_70DF8(&v46, v44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_6C088(0, *(v24 + 2) + 1, 1, v24);
          }

          v26 = *(v24 + 2);
          v25 = *(v24 + 3);
          if (v26 >= v25 >> 1)
          {
            v24 = sub_6C088((v25 > 1), v26 + 1, 1, v24);
          }

          *(v24 + 2) = v26 + 1;
          v27 = &v24[40 * v26];
          v28 = v44[0];
          v29 = v44[1];
          *(v27 + 8) = v45;
          *(v27 + 2) = v28;
          *(v27 + 3) = v29;
          v23 += 40;
          --v22;
        }

        while (v22);
      }

      v17 = v43;
    }

    else
    {
      sub_12E1C(v49, &unk_E00070, &unk_B0A990);
    }

    sub_AB3970();

    v30 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_resultScopeBar);
    sub_15F84(v51, v49, &unk_E00070, &unk_B0A990);
    if (*&v49[0])
    {
      sub_E8BA0(v49 + 8, &v46);
      v31 = v30;
      sub_30E500(v49);
      if (*(&v47 + 1))
      {
        sub_70DF8(&v46, v49);
        goto LABEL_29;
      }
    }

    else
    {
      v32 = v30;
      sub_12E1C(v49, &unk_E00070, &unk_B0A990);
      v46 = 0u;
      v47 = 0u;
      v48 = 0;
    }

    sub_12E1C(&v46, &unk_E00060, &qword_B094F0);
    memset(v49, 0, sizeof(v49));
    v50 = 0;
LABEL_29:
    sub_AB3930();
    sub_12E1C(v49, &unk_DFC5A0, &unk_B0EB70);

    if ((*(v17 + 120) & 1) != 0 || v51[0])
    {
      v36 = sub_208918();
      sub_15F84(v51, v49, &unk_E00070, &unk_B0A990);
      v37 = *&v49[0];
      if (*&v49[0])
      {
        v38 = v36;

        sub_30E500(v49);
        v39 = *(v37 + 16);

        v40 = v39 != 0;
      }

      else
      {
        v42 = v36;
        sub_12E1C(v49, &unk_E00070, &unk_B0A990);
        v40 = 0;
      }

      [v36 setShowsScopeBar:v40 animated:1];

      v16 = sub_208918();
      v41 = 1;
    }

    else
    {
      if (v5 < 2)
      {
        v35 = 0;
      }

      else
      {
        v33 = *(v17 + 112);
        v34 = *(v17 + 104) & 0xFFFFFFFFFFFFLL;
        if ((v33 & 0x2000000000000000) != 0)
        {
          v34 = HIBYTE(v33) & 0xF;
        }

        v35 = v34 != 0;
      }

      [sub_208918() setShowsScopeBar:v35 animated:1];
      v16 = sub_208918();
      v41 = 0;
    }

    sub_2935A0(v41, 1);
    sub_12E1C(v51, &unk_E00070, &unk_B0A990);

    goto LABEL_42;
  }

  [sub_208918() setShowsScopeBar:v5 > 1 animated:1];
  v16 = sub_208918();
  sub_2935A0(0, 1);
LABEL_42:
}

void sub_30D850()
{
  v1 = *(v0 + qword_DFE528);
  swift_beginAccess();
  v11 = v1;
  v2 = *(v1 + 80);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_130800(*(v2 + 16), 0);
    v5 = sub_131344(&v12, v4 + 32, v3, v2);
    v6 = v12;
    swift_bridgeObjectRetain_n();
    sub_2BB88(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v12 = v4;
  sub_426D20(&v12);

  v7 = v12;
  v8 = sub_30C4B8();
  v9 = *(*(sub_208918() + OBJC_IVAR____TtCC16MusicApplication6Search3Bar_scopeBarContentView) + OBJC_IVAR____TtCCC16MusicApplication6Search3BarP33_27F18EE4A78475F0B90E1F3E8DDA223A21ScopeBarContainerView_sourceScopeBar);
  *&v9[OBJC_IVAR____TtCCC16MusicApplication6Search3Bar14SourceScopeBar_sources] = v7;
  v10 = v9;

  sub_295DE8();

  if (!sub_412FC0(v8, v7))
  {
    if (!*(v7 + 2))
    {

      sub_30E554(v11 + 16, &v12);
      LOBYTE(v8) = Search.Configuration.defaultSource.getter();
      sub_30E5B0(&v12);
      goto LABEL_9;
    }

    LOBYTE(v8) = v7[32];
  }

LABEL_9:
  sub_30C53C(v8 & 1);
  sub_30D210();
}

void sub_30DA34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v1 = &v29 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = &v29 - v2;
  v4 = type metadata accessor for Search.ResultContext(0);
  v5 = *(v4 - 1);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v10 = sub_208934();
  v11 = v10[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading];
  v10[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isLoading] = 0;
  v12 = v10;
  sub_34DA84(v11);

  v13 = sub_208918();
  v14 = [v13 text];
  if (v14)
  {
    v30 = v3;
    v15 = v14;
    sub_AB92A0();

    v16 = String.trim()();

    v17 = (v16._object >> 56) & 0xF;
    if ((v16._object & 0x2000000000000000) == 0)
    {
      v17 = v16._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = sub_208934();
      Search.resultSnapshotController.getter();
      RequestResponse.Controller.revision.getter();

      v19 = v30;
      RequestResponse.Revision.content.getter(v30);

      v20 = *(v5 + 48);
      if (v20(v19, 1, v4) == 1)
      {
        type metadata accessor for Search.Item(0);
        sub_1D30D0();
        sub_30EF2C(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
        sub_AB5110();
        v21 = &v9[v4[7]];
        *(v21 + 1) = 0u;
        *(v21 + 2) = 0u;
        *v21 = 0u;
        v22 = &v9[v4[5]];
        *v22 = 0;
        *(v22 + 1) = 0;
        v9[v4[6]] = 1;
        *&v9[v4[8]] = 0;
        *&v9[v4[9]] = 0;
        v23 = &v9[v4[10]];
        *v23 = 0;
        *(v23 + 1) = 0;
        *(v23 + 2) = 0x7000000000000007;
        if (v20(v19, 1, v4) != 1)
        {
          sub_12E1C(v19, &unk_E00050, &qword_B094D0);
        }
      }

      else
      {
        sub_30EF74(v19, v9, type metadata accessor for Search.ResultContext);
      }

      v28 = v9;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v18 = sub_208934();
  Search.recentlySearchedSnapshotController.getter();
  RequestResponse.Controller.revision.getter();

  RequestResponse.Revision.content.getter(v1);

  v24 = *(v5 + 48);
  if (v24(v1, 1, v4) == 1)
  {
    type metadata accessor for Search.Item(0);
    sub_1D30D0();
    sub_30EF2C(&qword_DF4FB0, type metadata accessor for Search.Item, &protocol conformance descriptor for Search.Item);
    sub_AB5110();
    v25 = &v7[v4[7]];
    *(v25 + 1) = 0u;
    *(v25 + 2) = 0u;
    *v25 = 0u;
    v26 = &v7[v4[5]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v7[v4[6]] = 1;
    *&v7[v4[8]] = 0;
    *&v7[v4[9]] = 0;
    v27 = &v7[v4[10]];
    *v27 = 0;
    *(v27 + 1) = 0;
    *(v27 + 2) = 0x7000000000000007;
    if (v24(v1, 1, v4) != 1)
    {
      sub_12E1C(v1, &unk_E00050, &qword_B094D0);
    }
  }

  else
  {
    sub_30EF74(v1, v7, type metadata accessor for Search.ResultContext);
  }

  v28 = v7;
LABEL_16:
  sub_34DF14(v28);
}

double sub_30DF5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00050, &qword_B094D0);
  __chkstk_darwin();
  v3 = v13 - v2;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v13 - v6;
  v8 = sub_30C9C8();
  swift_beginAccess();
  sub_15F84((v8 + 17), v13, &qword_DFE5C0, &qword_B094D8);
  if (*(&v13[0] + 1))
  {
    v15[6] = v13[6];
    v15[7] = v13[7];
    v15[8] = v13[8];
    v16 = v14;
    v15[2] = v13[2];
    v15[3] = v13[3];
    v15[4] = v13[4];
    v15[5] = v13[5];
    v15[0] = v13[0];
    v15[1] = v13[1];

    sub_30CEC8(v13);
    v9 = _s16MusicApplication6SearchC21ResultSnapshotRequestV2eeoiySbAE_AEtFZ_0(v15, v13);
    sub_30E458(v13);
    if ((v9 & 1) == 0)
    {

      MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(0);

      sub_30CB98(v13);
      Search.resultSnapshotController.getter();
      RequestResponse.Controller.revision.getter();

      RequestResponse.Revision.content.getter(v3);

      sub_475B48(v3, 2, v7);
      sub_12E1C(v3, &unk_E00050, &qword_B094D0);
      sub_30E4AC(v13);
      sub_30EEC4(v7, v5, type metadata accessor for MetricsPageProperties);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE5C8, &unk_B094E0);
      swift_allocObject();
      *(v1 + qword_DFE530) = MetricsEvent.PageRender.init(pageProperties:)(v5);

      sub_30EFDC(v7, type metadata accessor for MetricsPageProperties);
    }

    sub_30E458(v15);
  }

  else
  {
    sub_12E1C(v13, &qword_DFE5C0, &qword_B094D8);
  }

  v10 = qword_DFE530;

  MetricsEvent.PageRender.markPageRequest()();

  v11 = *(v1 + v10);

  sub_30CEC8(v15);
  swift_beginAccess();
  sub_160B4(v15, v11 + 136, &qword_DFE5C0, &qword_B094D8);
  swift_endAccess();

  return result;
}

double sub_30E2B4()
{

  return result;
}

id sub_30E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SearchViewController(0, *&stru_158.sectname[swift_isaMask & *v4], a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_30E350(uint64_t a1)
{

  return result;
}

uint64_t sub_30E3B4()
{

  return swift_deallocObject();
}

uint64_t sub_30E604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_30E63C()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_30E700(double a1)
{
  v3 = *(sub_AB3430() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_41C040(v4, v5, a1);
}

void sub_30E774()
{
  *(v0 + qword_DFE518) = 0;
  *(v0 + qword_DFE520) = 0;
  v1 = qword_DFE528;
  type metadata accessor for Search();
  swift_allocObject();
  *(v0 + v1) = Search.init()();
  *(v0 + qword_DFE530) = 0;
  *(v0 + qword_DFE538) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_30E834()
{
  v1 = *(v0 + qword_DFE518);
  *(v0 + qword_DFE518) = 1;
  sub_30BEA0(v1);

  return sub_208A54();
}

void sub_30E870()
{
  sub_208A6C();
  v1 = *(v0 + qword_DFE518);
  *(v0 + qword_DFE518) = 0;

  sub_30BEA0(v1);
}

double sub_30E8A8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    *v5 = 27;
    *(v5 + 1) = 0;
    v5[16] = 1;
    *(v5 + 3) = 0;
    *(v5 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_309680(v5, v21);
    sub_12E1C(v21, &qword_DF2BD0, &unk_AFDC00);
    sub_30EFDC(v5, type metadata accessor for Search.Event);
  }

  sub_30CFAC();
  sub_30CEC8(v21);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;

  sub_30E458(v21);
  v9 = String.trim()();
  sub_30CEC8(v21);
  v10 = v24;
  sub_30E458(v21);
  if ((countAndFlagsBits != v9._countAndFlagsBits || object != v9._object) && (sub_ABB3C0() & 1) == 0)
  {
    v11 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      if ((v10 & 1) == 0)
      {
        v12 = v9._object & 0x2000000000000000;
        v13 = (v9._object >> 56) & 0xF;
        v14 = v9._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        goto LABEL_18;
      }
    }

    else
    {
      v12 = v9._object & 0x2000000000000000;
      v13 = (v9._object >> 56) & 0xF;
      v14 = v9._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if ((v9._object & 0x2000000000000000) != 0)
      {
        v15 = (v9._object >> 56) & 0xF;
      }

      else
      {
        v15 = v9._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!((v15 != 0) | v10 & 1))
      {
LABEL_18:
        if (v12)
        {
          v16 = v13;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          goto LABEL_23;
        }
      }
    }

    v17 = sub_208934();
    sub_3512A4();
  }

LABEL_23:
  sub_30CEC8(v21);

  v23 = v9;
  sub_30CF2C(v21);
  sub_30CEC8(v21);
  v24 = 0;
  sub_30CF2C(v21);
  sub_30DF5C();
  if (!v6)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_30CEC8(v21);
    sub_160B4(v19, &v25, &unk_E00060, &qword_B094F0);
    sub_30CF2C(v21);
  }

  sub_208A28();

  return result;
}

id sub_30EB44()
{
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v1 = v3 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = 1;
  swift_storeEnumTagMultiPayload();
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_309680(v1, v5);
  sub_12E1C(v5, &qword_DF2BD0, &unk_AFDC00);
  sub_30EFDC(v1, type metadata accessor for Search.Event);
  sub_30CEC8(v5);

  v7 = 0;
  v8 = 0xE000000000000000;
  sub_30CF2C(v5);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_30CEC8(v5);
  sub_160B4(v3, &v9, &unk_E00060, &qword_B094F0);
  sub_30CF2C(v5);
  return sub_208A2C();
}

uint64_t sub_30EC74()
{
  type metadata accessor for Search.Event(0);
  __chkstk_darwin();
  v1 = &v3 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = 2;
  swift_storeEnumTagMultiPayload();
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  sub_309680(v1, &v3);
  sub_12E1C(&v3, &qword_DF2BD0, &unk_AFDC00);
  sub_30EFDC(v1, type metadata accessor for Search.Event);
  *v1 = 0;
  v1[40] = 0;
  swift_storeEnumTagMultiPayload();
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  sub_309680(v1, &v3);
  sub_12E1C(&v3, &qword_DF2BD0, &unk_AFDC00);
  sub_30EFDC(v1, type metadata accessor for Search.Event);
  return 1;
}

uint64_t sub_30EE10()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_30EE48()
{

  return swift_deallocObject();
}

uint64_t sub_30EEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_2BBCC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_30EEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_30EF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_30EF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_30EFDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_30F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x4000000000000000) != 0)
  {
  }

  else
  {
    sub_2BB90(a1, a2, a3);
  }

  return result;
}

double sub_30F04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x7000000000000007) != 0)
  {
    return sub_30F064(a1, a2, a3);
  }

  return result;
}

double sub_30F064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x4000000000000000) != 0)
  {
  }

  else
  {
    sub_2BBCC(a1, a2, a3);
  }

  return result;
}

unint64_t sub_30F074()
{
  result = qword_DFE5F8;
  if (!qword_DFE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE5F8);
  }

  return result;
}

void sub_30F140(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v50 = sub_AB4BC0();
  v4 = *(v50 - 8);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v45 - v7;
  v9 = sub_AB3470();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = JSSubscriptionPurchaseSegue.buyParameters.getter();
  if (v14)
  {
    v47 = v13;
    v48 = v14;
    v46 = ObjectType;
    v15 = JSSubscriptionPurchaseCoordinator.shared.unsafeMutableAddressor();
    v16 = *v15;
    v17 = OBJC_IVAR____TtC11MusicJSCore33JSSubscriptionPurchaseCoordinator_processingPurchase;
    swift_beginAccess();
    if (v16[v17])
    {

      v18 = *OS_os_log.scripting.unsafeMutableAddressor();
      sub_AB4BD0();
      v19 = sub_AB4BA0();
      v20 = sub_AB9F30();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "[JSSubscriptionPurchase] A purchase attempt is in flight. Cannot complete subscription purchase.", v21, 2u);
      }

      (*(v4 + 8))(v8, v50);
      goto LABEL_23;
    }

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v25 = sub_AB3440();
    v27 = v26;
    (*(v10 + 8))(v12, v9);
    v28 = *v15;
    JSSubscriptionPurchaseCoordinator.didBeginPurchase(for:identifier:)(v2, v25, v27);

    sub_30F7C4(v59);
    if (*&v59[0] == 1)
    {
      swift_unknownObjectWeakInit();
      v61[0] = 0;
      v61[1] = 0;
      swift_unknownObjectWeakAssign();
      v61[3] = 0;
      v61[4] = 0;
      v29 = v49;
      if (*&v59[0] != 1)
      {
        sub_12E1C(v59, &unk_DFE1E0, qword_B09520);
      }

      sub_D5B6C();
      if (v30)
      {
LABEL_13:
        v31 = v30;
        static PresentationSource.topmost(in:)(&v51);

        if (v55 != 1)
        {
          sub_17704(&v51, v59);
          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1611C(v59);
          swift_unknownObjectWeakAssign();

LABEL_18:
          if (qword_DE6A90 != -1)
          {
            swift_once();
          }

          sub_311CA4(v61, v59);
          swift_beginAccess();
          v33 = v2;
          sub_2E5AFC(v59, v33);
          swift_endAccess();
          if (JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.getter())
          {
            sub_30F890();
          }

          v34 = objc_allocWithZone(AMSBuyParams);
          v35 = sub_AB9260();
          v36 = [v34 initWithString:v35];

          sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
          v37 = static ICStoreRequestContext.storeFlow.getter();
          v38 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v37];

          v39 = v38;
          v19 = sub_311278(v36, v39, v25, v27, v33);

          v40 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_2D384(v29, v59);
          v41 = swift_allocObject();
          v42 = v59[1];
          *(v41 + 40) = v59[0];
          *(v41 + 16) = v40;
          *(v41 + 24) = v25;
          *(v41 + 32) = v27;
          *(v41 + 56) = v42;
          *(v41 + 72) = v59[2];
          v43 = v46;
          *(v41 + 88) = v60;
          *(v41 + 96) = v43;
          *&v53 = sub_311D7C;
          *(&v53 + 1) = v41;
          *&v51 = _NSConcreteStackBlock;
          *(&v51 + 1) = 1107296256;
          *&v52 = sub_311FA0;
          *(&v52 + 1) = &block_descriptor_105;
          v44 = _Block_copy(&v51);

          [v19 addFinishBlock:v44];

          sub_3108D0(v61);
          _Block_release(v44);

          goto LABEL_23;
        }

LABEL_17:
        sub_12E1C(&v51, &unk_DEA520, &unk_AFDBF0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_9B098(v59, v61);
      v29 = v49;
      sub_D5B6C();
      if (v30)
      {
        goto LABEL_13;
      }
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v55 = 1;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_17;
  }

  v22 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v19 = sub_AB4BA0();
  v23 = sub_AB9F30();
  if (os_log_type_enabled(v19, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v19, v23, "[JSSubscriptionPurchase] No buyParameters were set. Cannot complete subscription purchase.", v24, 2u);
  }

  (*(v4 + 8))(v6, v50);
LABEL_23:
}

double sub_30F7C4@<D0>(uint64_t a1@<X8>)
{
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_DFE610;
  if (*(&dword_10 + off_DFE610) && (v4 = sub_2ECB8C(v1), (v5 & 1) != 0))
  {
    sub_311CA4(*&stru_20.segname[v3 + 16] + 40 * v4, a1);
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  swift_endAccess();
  return result;
}

void sub_30F890()
{
  v1 = v0;
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_DFE610;
  if (*(&dword_10 + off_DFE610) && (v3 = sub_2ECB8C(v1), (v4 & 1) != 0))
  {
    sub_311CA4(*&stru_20.segname[v2 + 16] + 40 * v3, &v14);
  }

  else
  {
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
  }

  swift_endAccess();
  if (v14 == 1)
  {
    sub_12E1C(&v14, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    v5 = v16;
    v6 = v16;
    sub_3108D0(&v14);
    if (v5)
    {

      return;
    }
  }

  type metadata accessor for JSSubscriptionPurchaseLoadingViewController();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_30F7C4(v13);
  if (v13[0] == 1)
  {
    swift_unknownObjectWeakInit();
    v14 = 0;
    *&v15 = 0;
    swift_unknownObjectWeakAssign();
    v16 = 0uLL;
    if (v13[0] != 1)
    {
      sub_12E1C(v13, &unk_DFE1E0, qword_B09520);
    }
  }

  else
  {
    sub_9B098(v13, &v14);
  }

  v8 = v16;
  v9 = v7;

  *&v16 = v7;
  sub_311CA4(&v14, v13);
  swift_beginAccess();
  v10 = v1;
  sub_2E5AFC(v13, v10);
  swift_endAccess();
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311DE8, v11);

  sub_3108D0(&v14);
}

double sub_30FAEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_30FDE0(a1, a2, a4, a5);
    if (JSSubscriptionPurchaseSegue.shouldShowLoadingIndicator.getter())
    {
      sub_414AFC(&v24);
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = a7;
      v16 = v14;
      sub_30F7C4(v23);
      if (*v23 == 1)
      {
        sub_12E1C(v23, &unk_DFE1E0, qword_B09520);
      }

      else
      {
        v17 = *&v23[24];
        v18 = *&v23[24];
        sub_3108D0(v23);
        if (v17)
        {
          sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
          sub_311E30(&v24, v23);
          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          *(v19 + 24) = v16;
          *(v19 + 32) = sub_311E28;
          *(v19 + 40) = v15;
          v20 = *&v23[16];
          *(v19 + 48) = *v23;
          *(v19 + 64) = v20;
          *(v19 + 80) = *&v23[32];
          v21 = v16;
          v22 = v18;

          static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311EF8, v19);

          sub_12E1C(&v24, &unk_DE8E30, "\b]\r");

LABEL_13:

          return result;
        }
      }

      if (qword_DE6A90 != -1)
      {
        swift_once();
      }

      *v23 = 1;
      memset(&v23[8], 0, 32);
      swift_beginAccess();
      sub_2E5AFC(v23, v16);
      swift_endAccess();
      sub_12E1C(&v24, &unk_DE8E30, "\b]\r");
      goto LABEL_13;
    }

    if (qword_DE6A90 != -1)
    {
      swift_once();
    }

    v24 = 1;
    v25 = 0u;
    v26 = 0u;
    swift_beginAccess();
    sub_2E5AFC(&v24, v14);
    swift_endAccess();
  }

  return result;
}

double sub_30FDE0(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    if (!a1)
    {
      v16 = sub_97420(_swiftEmptyArrayStorage);
      goto LABEL_19;
    }

    v15 = [a1 error];
    if (!v15)
    {
      v25 = objc_opt_self();
      v26 = a1;
      v27 = [v25 sharedController];
      [v27 refreshMusicSubscriptionStatus];

      v28 = sub_310168();
      if (v28)
      {
        v30 = v28;
        v31 = v29;
        v32 = v26;
        v30(a1, 0);

        sub_17654(v30, v31);
      }

      else
      {
      }

      v16 = sub_97420(_swiftEmptyArrayStorage);
      v17 = v26;
      goto LABEL_11;
    }

    v10 = v15;
  }

  swift_errorRetain();
  v11 = sub_310168();
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    swift_errorRetain();
    v13(v10, 1);

    sub_17654(v13, v14);
  }

  else
  {
  }

  v16 = sub_97420(_swiftEmptyArrayStorage);
  if (!a1)
  {
    goto LABEL_19;
  }

  v17 = a1;
LABEL_11:
  v18 = [v17 responseDictionary];
  if (v18)
  {
    v19 = v18;
    v20 = sub_AB8FF0();

    sub_ABAD10();
    if (*(v20 + 16) && (v21 = sub_2EC004(v33), (v22 & 1) != 0))
    {
      sub_808B0(*(v20 + 56) + 32 * v21, v34);
      sub_8085C(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
      if (swift_dynamicCast())
      {

        v16 = 0xD000000000000012;
        goto LABEL_19;
      }
    }

    else
    {
      sub_8085C(v33);
    }
  }

LABEL_19:
  v23 = *JSSubscriptionPurchaseCoordinator.shared.unsafeMutableAddressor();
  JSSubscriptionPurchaseCoordinator.didCompletePurchase(for:identifier:subscriptionStatus:error:)(v5, a3, a4, v16, a2);

  return result;
}

double sub_3100CC(void *a1)
{
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  v3 = 1;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_2E5AFC(&v3, a1);
  swift_endAccess();
  return result;
}

uint64_t sub_310168()
{
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_DFE610;
  if (*(&dword_10 + off_DFE610) && (v2 = sub_2ECB8C(v0), (v3 & 1) != 0))
  {
    sub_311CA4(*&stru_20.segname[v1 + 16] + 40 * v2, &v6);
  }

  else
  {
    v6 = 1;
    v7 = 0u;
    v8 = 0u;
  }

  swift_endAccess();
  v4 = v6;
  if (v6 == 1)
  {
    sub_12E1C(&v6, &unk_DFE1E0, qword_B09520);
    return 0;
  }

  else
  {
    sub_307CC(v6, v7);
    sub_3108D0(&v6);
  }

  return v4;
}

void sub_310274(uint64_t a1, void *a2)
{
  sub_30F7C4(v9);
  if (v9[0] == 1)
  {
    sub_12E1C(v9, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v9);
    if (Strong)
    {
      UIViewController.add(_:)(a2);
    }
  }

  if ([a2 isViewLoaded])
  {
    sub_30F7C4(v9);
    if (v9[0] == 1)
    {
      sub_12E1C(v9, &unk_DFE1E0, qword_B09520);
      return;
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v9);
    if (v4)
    {
      if ([v4 isViewLoaded])
      {
        v5 = [a2 view];
        if (v5)
        {
          v6 = v5;
          v7 = [v4 view];
          if (v7)
          {
            v8 = v7;
            [v7 bounds];
            [v6 setFrame:?];

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_3103F4(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = a3;
  v10[5] = a4;
  v11 = *&a1[OBJC_IVAR____TtC16MusicApplication43JSSubscriptionPurchaseLoadingViewController_loadingView];
  v12 = a2;
  v13 = a1;

  [v11 setAlpha:1.0];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v29 = sub_311F4C;
  v30 = v15;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1B5EB4;
  v28 = &block_descriptor_51;
  v16 = _Block_copy(&aBlock);
  v17 = v13;

  v29 = sub_311F08;
  v30 = v10;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1811AC;
  v28 = &block_descriptor_54;
  v18 = _Block_copy(&aBlock);

  [v14 animateWithDuration:v16 animations:v18 completion:0.25];
  _Block_release(v18);
  _Block_release(v16);

  sub_311E30(a5, &v23);
  if (!v24)
  {
    return sub_12E1C(&v23, &unk_DE8E30, "\b]\r");
  }

  sub_70DF8(&v23, &aBlock);
  __swift_project_boxed_opaque_existential_1(&aBlock, v28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    _s30CollectionViewSelectionHandlerVMa(0);
    isa = sub_AB3770().super.isa;
    [v20 deselectItemAtIndexPath:isa animated:1];
  }

  return __swift_destroy_boxed_opaque_existential_0(&aBlock);
}

uint64_t sub_310670(uint64_t a1, uint64_t a2, UIViewController a3, uint64_t (*a4)(uint64_t))
{
  sub_30F7C4(v9);
  if (v9[0] == 1)
  {
    v6 = sub_12E1C(v9, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = sub_3108D0(v9);
    if (Strong)
    {
      UIViewController.remove(_:)(a3);
    }
  }

  return a4(v6);
}

int *sub_310718()
{
  result = sub_99394(_swiftEmptyArrayStorage);
  off_DFE610 = result;
  return result;
}

void JSSubscriptionPurchaseSegue.purchase(_:handle:completion:)(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  sub_30F7C4(v14);
  if (v14[0] == 1)
  {
    sub_12E1C(v14, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v14);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v8 = swift_allocObject();
      v8[2] = a2;
      v8[3] = Strong;
      v8[4] = a3;
      v8[5] = a4;
      v9 = a2;
      v10 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_310A10, v8);

      return;
    }
  }

  v11 = sub_AB9260();
  v12 = sub_AB9260();
  v13 = AMSError();

  a3(0, v13);
}

{
  sub_30F7C4(v15);
  if (v15[0] == 1)
  {
    sub_12E1C(v15, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    v7 = v16;
    v8 = v16;
    sub_3108D0(v15);
    if (v7)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v9 = swift_allocObject();
      v9[2] = a2;
      v9[3] = v8;
      v9[4] = a3;
      v9[5] = a4;
      v10 = v8;
      v11 = a2;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_310CCC, v9);

      return;
    }
  }

  v12 = sub_AB9260();
  v13 = sub_AB9260();
  v14 = AMSError();

  a3(0, v14);
}

{
  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0, qword_B09520);
LABEL_6:
    v9 = sub_AB9260();
    v10 = sub_AB9260();
    v11 = AMSError();

    a3(0, v11);
    return;
  }

  v7 = v20;
  v8 = v20;
  sub_3108D0(v19);
  if (!v7)
  {
    goto LABEL_6;
  }

  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    v12 = v21;
    swift_unknownObjectRetain();
    sub_3108D0(v19);
    if (v12)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v13 = swift_allocObject();
      v13[2] = a2;
      v13[3] = v12;
      v13[4] = v8;
      v13[5] = a3;
      v13[6] = a4;
      v14 = v8;
      swift_unknownObjectRetain();
      v15 = a2;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3110D0, v13);

      swift_unknownObjectRelease();

      return;
    }
  }

  v16 = sub_AB9260();
  v17 = sub_AB9260();
  v18 = AMSError();

  a3(0, v18);
}

void sub_310900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:a1 presentingViewController:a2];
  v7 = [v6 performAuthentication];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_151E0;
  v9[3] = &block_descriptor_63_0;
  v8 = _Block_copy(v9);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
}

void sub_310BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a1 presentingViewController:a2];
  v7 = [v6 present];
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_DBA68;
  v9[3] = &block_descriptor_60_1;
  v8 = _Block_copy(v9);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
}

void sub_310F6C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_DFE688, AMSUIEngagementTask_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) initWithRequest:v12 bag:a2 presentingViewController:v11];

  swift_unknownObjectRelease();
  v14 = [v13 presentEngagement];
  v16[4] = a4;
  v16[5] = a5;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_311FA0;
  v16[3] = &block_descriptor_57_0;
  v15 = _Block_copy(v16);

  [v14 addFinishBlock:v15];
  _Block_release(v15);
}

void sub_3110EC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySo011AMSPurchaseA0Cs5Error_pGIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3111B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_31120C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_311278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [objc_allocWithZone(AMSPurchase) initWithPurchaseType:0 buyParams:a1];
  v8 = [objc_opt_self() ams_sharedAccountStore];
  v9 = [v8 ams_activeiTunesAccount];

  [v7 setAccount:v9];
  [v7 setRequiresAccount:1];
  [v7 setUserInitiated:1];
  v10 = JSSubscriptionPurchaseSegue.metricsOverlay.getter();
  if (v10)
  {
    sub_3E8814(v10);

    v11.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [v7 setMetricsOverlay:v11.super.isa];

  v12 = sub_AB9260();
  [v7 setLogUUID:v12];

  v13 = [objc_allocWithZone(AMSPurchaseTask) initWithPurchase:v7 bag:a2];
  [v13 setDelegate:a5];
  sub_30F7C4(v17);
  if (v17[0] == 1)
  {
    swift_unknownObjectWeakInit();
    v18[0] = 0;
    v18[1] = 0;
    swift_unknownObjectWeakAssign();
    v18[3] = 0;
    v19 = 0;
    if (v17[0] != 1)
    {
      sub_12E1C(v17, &unk_DFE1E0, qword_B09520);
    }
  }

  else
  {
    sub_9B098(v17, v18);
  }

  v14 = a2;
  swift_unknownObjectRelease();
  v19 = a2;
  if (qword_DE6A90 != -1)
  {
    swift_once();
  }

  sub_311CA4(v18, v17);
  swift_beginAccess();
  sub_2E5AFC(v17, a5);
  swift_endAccess();
  v15 = [v13 performPurchase];

  sub_3108D0(v18);
  return v15;
}

void sub_311558(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_30F7C4(v14);
  if (v14[0] == 1)
  {
    sub_12E1C(v14, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_3108D0(v14);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = Strong;
      v7[4] = sub_15AAE4;
      v7[5] = v5;
      v8 = a1;
      v9 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311FA8, v7);

      return;
    }
  }

  v10 = sub_AB9260();
  v11 = sub_AB9260();
  v12 = AMSError();

  v13 = sub_AB3040();
  (a3)[2](a3, 0, v13);
}

void sub_311740(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_30F7C4(v15);
  if (v15[0] == 1)
  {
    sub_12E1C(v15, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    v6 = v16;
    v7 = v16;
    sub_3108D0(v15);
    if (v6)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v8 = swift_allocObject();
      v8[2] = a1;
      v8[3] = v7;
      v8[4] = sub_15A6E8;
      v8[5] = v5;
      v9 = v7;
      v10 = a1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311FA4, v8);

      return;
    }
  }

  v11 = sub_AB9260();
  v12 = sub_AB9260();
  v13 = AMSError();

  v14 = sub_AB3040();
  (a3)[2](a3, 0, v14);
}

void sub_311924(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0, qword_B09520);
LABEL_6:
    v8 = sub_AB9260();
    v9 = sub_AB9260();
    v10 = AMSError();

    v11 = sub_AB3040();
    (a3)[2](a3, 0, v11);

    goto LABEL_10;
  }

  v6 = v20;
  v7 = v20;
  sub_3108D0(v19);
  if (!v6)
  {
    goto LABEL_6;
  }

  sub_30F7C4(v19);
  if (v19[0] == 1)
  {
    sub_12E1C(v19, &unk_DFE1E0, qword_B09520);
  }

  else
  {
    v12 = v21;
    swift_unknownObjectRetain();
    sub_3108D0(v19);
    if (v12)
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = v12;
      v13[4] = v7;
      v13[5] = sub_15AAE4;
      v13[6] = v5;
      v14 = v7;
      swift_unknownObjectRetain();
      v15 = a1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_311F78, v13);

      swift_unknownObjectRelease();

      return;
    }
  }

  v16 = sub_AB9260();
  v17 = sub_AB9260();
  v18 = AMSError();

  v11 = sub_AB3040();
  (a3)[2](a3, 0, v11);

LABEL_10:
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_311C6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_311CDC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_311D14()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  }

  return swift_deallocObject();
}

double block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_311DA8()
{

  return swift_deallocObject();
}

uint64_t sub_311DF0()
{

  return swift_deallocObject();
}

uint64_t sub_311E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E30, "\b]\r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_311EA0()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t sub_311F14()
{

  return swift_deallocObject();
}

uint64_t MusicRecognitionModuleContextProvider.enabledState.getter()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_AB9260();
  v5[4] = sub_312980;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_312988;
  v5[3] = &block_descriptor_106;
  v3 = _Block_copy(v5);

  [v1 getEnabledStateOfModuleWithIdentifier:v2 completionHandler:v3];
  _Block_release(v3);

  if (*(v0 + 40))
  {
    return 0;
  }

  else
  {
    return *(v0 + 32);
  }
}

void sub_3120E4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = sub_AB9260();
  v4[4] = sub_312AC4;
  v5 = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_3FC190;
  v4[3] = &block_descriptor_4;
  v3 = _Block_copy(v4);

  [v1 requestEnableModuleWithIdentifier:v2 completionHandler:v3];
  _Block_release(v3);
}

uint64_t MusicRecognitionModuleContextProvider.stateChangeObserver.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MusicRecognitionModuleContextProvider.stateChangeObserver.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_31232C;
}

void sub_31232C(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

uint64_t sub_3123B0(uint64_t result)
{
  v2 = result;
  if ((*(v1 + 40) & 1) != 0 || *(v1 + 32) != result)
  {
    *(v1 + 32) = result;
    *(v1 + 40) = 0;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v2, ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_312450(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v11 = aBlock - v10 + 16;
  if (a2)
  {
    swift_errorRetain();
    v12 = *OS_os_log.scripting.unsafeMutableAddressor();
    sub_AB4BD0();
    swift_errorRetain();
    v13 = sub_AB4BA0();
    v14 = sub_AB9F30();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_ABB520();
      v19 = sub_425E68(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "Attempt to enable Music Recognition module failed with error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);

      (*(v7 + 8))(v11, v6);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
    }
  }

  else
  {
    v20 = [objc_opt_self() sharedInstance];
    v21 = sub_AB9260();
    aBlock[4] = sub_312ADC;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_312988;
    aBlock[3] = &block_descriptor_8_1;
    v22 = _Block_copy(aBlock);

    [v20 getEnabledStateOfModuleWithIdentifier:v21 completionHandler:v22];
    _Block_release(v22);

    v23 = *OS_os_log.scripting.unsafeMutableAddressor();
    sub_AB4BD0();
    v24 = sub_AB4BA0();
    v25 = sub_AB9F50();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = a1 & 1;
      _os_log_impl(&dword_0, v24, v25, "Attempt to enable Music Recognition module: %{BOOL}d", v26, 8u);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void sub_312818(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3123B0(a1);
  v6 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_0, v7, v8, "Music recognition enabled state = %lu", v9, 0xCu);
  }

  (*(v3 + 8))(v5, v2);
}

double sub_312988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t MusicRecognitionModuleContextProvider.__deallocating_deinit()
{
  sub_176DC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_312A4C@<X0>(uint64_t *a1@<X8>)
{
  result = MusicRecognitionModuleContextProvider.enabledState.getter();
  *a1 = result;
  return result;
}

id sub_312C24(uint64_t a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for JSBiographyViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = sub_3132E4();
  [v4 addSubview:v5];

  result = [v2 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  Width = CGRectGetWidth(v22);
  sub_471A4();
  if (sub_AB38F0())
  {
    v15 = *&v2[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView];
    v16 = v15[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle];
    v15[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 1;
    if (v16 != 1)
    {
      v17 = v15;
      [v17 setNeedsLayout];
      v18 = *&v17[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
      if (v18)
      {
        v19 = *&v17[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler + 8];

        v18(v17);
        sub_17654(v18, v19);
      }
    }

    sub_3135E8();
  }

  return sub_3135E8();
}

void sub_312E90(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for JSBiographyViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!a1 || v4 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache];
    v14 = *(v13 + 64);

    [v14 removeAllObjects];
    [*(v13 + 80) removeAllObjects];
    if (*(v13 + 96))
    {
      *(v13 + 104) = 1;
    }

    else
    {
      v15 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v15 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v13];
    }

    sub_3135E8();
  }
}

uint64_t sub_313138(uint64_t a1, double a2)
{
  if (a1)
  {
    sub_471A4();
    v2 = sub_AB38F0();
    v3 = sub_3132E4();
    v4 = v3;
    v5 = v3[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle];
    if (v2)
    {
      v3[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 2;
      if (v5 == 2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 0;
      if (!v5)
      {
LABEL_14:

        return sub_3135E8();
      }
    }

    [v3 setNeedsLayout];
    v12 = *&v4[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
    if (v12)
    {
      v13 = *&v4[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler + 8];

      v12(v4);
      sub_17654(v12, v13);
    }

    goto LABEL_14;
  }

  v6 = sub_3132E4();
  v7 = v6;
  v8 = v6[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle];
  v6[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutStyle] = 1;
  if (v8 != 1)
  {
    [v6 setNeedsLayout];
    v9 = *&v7[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
    if (v9)
    {
      v10 = *&v7[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler + 8];

      v9(v7);
      sub_17654(v9, v10);
    }
  }

  return sub_3135E8();
}

char *sub_3132E4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView);
  }

  else
  {
    v4 = sub_313348(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_313348(uint64_t a1)
{
  v1 = (*(&stru_B8.size + (swift_isaMask & **(a1 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_viewModel))))();
  v3 = v1;
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v5 = 0;
    v28 = v3 & 0xFFFFFFFFFFFFFF8;
    v29 = v3 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
    v27 = v3;
    while (1)
    {
      if (v29)
      {
        v7 = sub_3608D8(v5, v3, v2);
      }

      else
      {
        if (v5 >= *(v28 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = i;
      v11 = (*&stru_68.segname[swift_isaMask & *v7])();
      v13 = v12;
      v14 = (*(&stru_68.size + (swift_isaMask & *v8)))();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_6B7C8(0, *(v6 + 2) + 1, 1, v6);
      }

      v18 = *(v6 + 2);
      v17 = *(v6 + 3);
      if (v18 >= v17 >> 1)
      {
        v6 = sub_6B7C8((v17 > 1), v18 + 1, 1, v6);
      }

      *(v6 + 2) = v18 + 1;
      v19 = &v6[32 * v18];
      *(v19 + 4) = v11;
      *(v19 + 5) = v13;
      *(v19 + 6) = v14;
      *(v19 + 7) = v16;
      ++v5;
      i = v10;
      v20 = v9 == v10;
      v3 = v27;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_20:

  v21 = objc_allocWithZone(type metadata accessor for BiographyView());
  v22 = sub_160234(v6);
  v23 = *(a1 + OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache);
  v24 = OBJC_IVAR____TtC16MusicApplication13BiographyView_textDrawingCache;
  swift_beginAccess();
  *&v22[v24] = v23;
  swift_retain_n();

  sub_160988();

  return v22;
}

uint64_t sub_3135E8()
{
  v1 = v0;
  result = [v0 isViewLoaded];
  if (result)
  {
    v3 = sub_3132E4();
    result = [v1 view];
    if (result)
    {
      v4 = result;
      [result bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v21.origin.x = v6;
      v21.origin.y = v8;
      v21.size.width = v10;
      v21.size.height = v12;
      [v3 sizeThatFits:{CGRectGetWidth(v21), 1.79769313e308}];
      v14 = v13;
      v16 = v15;

      type metadata accessor for CGSize(0);
      [v1 preferredContentSize];
      v19 = v17;
      v20 = v18;
      result = sub_AB38D0();
      if (result)
      {
        return [v1 setPreferredContentSize:{v14, v16, *&v14, *&v16, v19, v20}];
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_31374C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSBiographyViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_3138B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE900, &qword_B098E0) - 8;
  __chkstk_darwin();
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE908, &qword_B098E8);
  __chkstk_darwin();
  v7 = v19 - v6;
  *v4 = sub_AB6440();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE910, &qword_B098F0);
  sub_313B84(v1, &v4[*(v8 + 44)]);
  KeyPath = swift_getKeyPath();
  v10 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE918, &qword_B09928) + 36)];
  *v10 = KeyPath;
  *(v10 + 1) = 3;
  v10[16] = 0;
  v11 = swift_getKeyPath();
  v12 = &v4[*(v2 + 44)];
  *v12 = v11;
  v12[8] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v19);

  sub_AB7A30();
  sub_AB5E90();
  sub_319B08(v4, v7);
  v13 = &v7[*(v5 + 36)];
  v14 = v19[5];
  *(v13 + 4) = v19[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v19[6];
  v15 = v19[1];
  *v13 = v19[0];
  *(v13 + 1) = v15;
  v16 = v19[3];
  *(v13 + 2) = v19[2];
  *(v13 + 3) = v16;
  sub_319B78();
  View.keyboardReactive()(v5);
  return sub_12E1C(v7, &qword_DFE908, &qword_B098E8);
}

uint64_t sub_313B84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v85 = a1;
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE968, &qword_B099C0) - 8;
  __chkstk_darwin();
  v86 = &v75[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v75[-v4];
  v92 = *v2;
  v104 = JSSocialLightIdentityCreator.title.getter();
  v105 = v6;
  v84 = sub_36A48();
  v7 = sub_AB6F20();
  v9 = v8;
  v11 = v10;
  sub_AB6BB0();
  v12 = sub_AB6E80();
  v14 = v13;
  LOBYTE(v2) = v15;

  sub_36B74(v7, v9, v11 & 1);

  sub_AB6BD0();
  v16 = sub_AB6E00();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_36B74(v12, v14, v2 & 1);

  sub_AB74D0();
  v90 = sub_AB6E10();
  v89 = v20;
  v22 = v21;
  v91 = v23;

  sub_36B74(v16, v18, v9 & 1);

  v94 = sub_AB6AC0();
  sub_AB5690();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v93 = v22 & 1;
  LOBYTE(v104) = v22 & 1;
  LOBYTE(v100) = 0;
  v104 = JSSocialLightIdentityCreator.subtitle.getter();
  v105 = v32;
  v33 = sub_AB6F20();
  v35 = v34;
  LOBYTE(v18) = v36;
  sub_AB6B90();
  v37 = sub_AB6E80();
  v39 = v38;
  v41 = v40;

  sub_36B74(v33, v35, v18 & 1);

  sub_AB6BF0();
  v42 = sub_AB6E00();
  v44 = v43;
  v46 = v45;
  sub_36B74(v37, v39, v41 & 1);

  sub_AB74E0();
  v81 = sub_AB6E10();
  v82 = v47;
  v83 = v48;
  v84 = v49;

  sub_36B74(v42, v44, v46 & 1);

  v50 = v85;
  v100 = *(v85 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978, &unk_B0F320);
  sub_AB7660();
  v80 = v104;
  v79 = v105;
  v78 = v106;
  v100 = *(v50 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  sub_AB7660();
  v51 = v105;
  v77 = v104;
  v76 = v106;
  type metadata accessor for EnvironmentObjects(0);
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);
  v52 = sub_AB5F20();
  v54 = v53;
  v55 = sub_AB7A30();
  v57 = v56;
  v58 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE990, &qword_B099C8) + 36)];
  sub_314370(v58);
  v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE998, &qword_B099D0) + 36));
  *v59 = v55;
  v59[1] = v57;
  v60 = v80;
  *v5 = v92;
  *(v5 + 1) = v60;
  *(v5 + 2) = v79;
  v5[24] = v78;
  *(v5 + 7) = *&v99[3];
  *(v5 + 25) = *v99;
  *(v5 + 4) = v77;
  *(v5 + 5) = v51;
  v5[48] = v76;
  *(v5 + 13) = *&v98[3];
  *(v5 + 49) = *v98;
  *(v5 + 7) = v52;
  *(v5 + 8) = v54;
  v97 = *(v50 + 1);
  v61 = *(&v97 + 1);
  v62 = sub_AB5490();
  v63 = &v5[*(v87 + 44)];
  *v63 = v62;
  v63[1] = v61;
  v64 = v86;
  sub_15F84(v5, v86, &unk_DFE968, &qword_B099C0);
  v65 = v88;
  *v88 = 0x4034000000000000;
  *(v65 + 8) = 0;
  *&v100 = v90;
  *(&v100 + 1) = v89;
  LOBYTE(v101) = v93;
  *(&v101 + 1) = *v96;
  DWORD1(v101) = *&v96[3];
  *(&v101 + 1) = v91;
  LOBYTE(v102) = v94;
  *(&v102 + 1) = *v95;
  DWORD1(v102) = *&v95[3];
  *(&v102 + 1) = v25;
  *v103 = v27;
  *&v103[8] = v29;
  *&v103[16] = v31;
  v103[24] = 0;
  v66 = v100;
  v67 = v101;
  v68 = v102;
  *(v65 + 73) = *&v103[9];
  v69 = *v103;
  *(v65 + 3) = v68;
  *(v65 + 4) = v69;
  *(v65 + 1) = v66;
  *(v65 + 2) = v67;
  v70 = v81;
  v71 = v82;
  v65[12] = v81;
  v65[13] = v71;
  LOBYTE(v42) = v83 & 1;
  *(v65 + 112) = v83 & 1;
  v65[15] = v84;
  v65[16] = 0x403E000000000000;
  *(v65 + 136) = 0;
  v72 = v65;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9A0, &qword_B099D8);
  sub_15F84(v64, v72 + *(v73 + 96), &unk_DFE968, &qword_B099C0);
  sub_15F84(&v97, &v104, &qword_DFE9A8, &unk_B099E0);
  sub_15F84(&v100, &v104, &qword_DFE9B0, &qword_AF4F18);
  sub_AFF30(v70, v71, v42);

  sub_12E1C(v5, &unk_DFE968, &qword_B099C0);
  sub_12E1C(v64, &unk_DFE968, &qword_B099C0);
  sub_36B74(v70, v71, v42);

  v104 = v90;
  v105 = v89;
  v106 = v93;
  *v107 = *v96;
  *&v107[3] = *&v96[3];
  v108 = v91;
  v109 = v94;
  *v110 = *v95;
  *&v110[3] = *&v95[3];
  v111 = v25;
  v112 = v27;
  v113 = v29;
  v114 = v31;
  v115 = 0;
  return sub_12E1C(&v104, &qword_DFE9B0, &qword_AF4F18);
}

double sub_314370@<D0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnvironmentObjects(0);
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE978, &unk_B0F320);
  sub_AB7660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  sub_AB7660();
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v9, *(&v9 + 1), v10, v6, v7, v8, v6, v7, a2, v8, 0, 0, v2);

  sub_AB7A30();
  sub_AB5970();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9B8, &unk_B099F0) + 36));
  *v3 = v9;
  v3[1] = v10;
  result = *&v11;
  v3[2] = v11;
  return result;
}

double sub_31455C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_314614@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA20, &qword_B09B20) - 8;
  __chkstk_darwin();
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v28 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA28, &qword_B09B28);
  v7 = *(v31 - 8);
  __chkstk_darwin();
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v28 - v9;
  v35 = a1;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA30, &qword_B09B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA38, &qword_B09B38);
  sub_31A2C0();
  sub_36A00(&qword_DFEAB8, &qword_DFEA38, &qword_B09B38, &protocol conformance descriptor for TupleView<A>);
  v11 = v10;
  v29 = v10;
  sub_AB6D10();
  *v6 = sub_AB6450();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAC0, &qword_B09B78);
  sub_315F3C(a1, &v6[*(v12 + 44)]);
  v13 = sub_AB6AC0();
  sub_AB5690();
  v14 = &v6[*(v3 + 44)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v19 = *(v7 + 16);
  v21 = v30;
  v20 = v31;
  v19(v30, v11, v31);
  v22 = v32;
  sub_15F84(v6, v32, &qword_DFEA20, &qword_B09B20);
  v23 = v33;
  v19(v33, v21, v20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAC8, &unk_B09B80);
  v25 = &v23[*(v24 + 48)];
  *v25 = 0x403E000000000000;
  v25[8] = 0;
  sub_15F84(v22, &v23[*(v24 + 64)], &qword_DFEA20, &qword_B09B20);
  sub_12E1C(v6, &qword_DFEA20, &qword_B09B20);
  v26 = *(v7 + 8);
  v26(v29, v20);
  sub_12E1C(v22, &qword_DFEA20, &qword_B09B20);
  return (v26)(v21, v20);
}

uint64_t sub_314998@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB38, &qword_B09C78);
  __chkstk_darwin();
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB40, &qword_B09C80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = &v34 - v9;
  __chkstk_darwin();
  v11 = &v34 - v10;
  __chkstk_darwin();
  v13 = &v34 - v12;
  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 64);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  sub_31A604(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB48, &qword_B09C88);
  sub_36A00(&qword_DFEB50, &qword_DFEB48, &qword_B09C88, &protocol conformance descriptor for Label<A, B>);
  v39 = v13;
  sub_AB7690();
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  sub_31A604(a1, v41);
  v36 = v11;
  sub_AB7690();
  if (*(a1 + 56))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v41);

    if (v41[0])
    {

      v20 = swift_allocObject();
      v21 = *(a1 + 48);
      *(v20 + 48) = *(a1 + 32);
      *(v20 + 64) = v21;
      *(v20 + 80) = *(a1 + 64);
      v22 = *(a1 + 16);
      *(v20 + 16) = *a1;
      *(v20 + 32) = v22;
      sub_31A604(a1, v41);
      v23 = v40;
      sub_AB7690();
      (*(v7 + 32))(v5, v23, v6);
      v24 = 0;
    }

    else
    {
      v24 = 1;
      v23 = v40;
    }

    (*(v7 + 56))(v5, v24, 1, v6);
    v25 = *(v7 + 16);
    v25(v23, v39, v6);
    v27 = v35;
    v26 = v36;
    v25(v35, v36, v6);
    v28 = v38;
    sub_15F84(v5, v38, &qword_DFEB38, &qword_B09C78);
    v29 = v5;
    v30 = v37;
    v25(v37, v23, v6);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB58, &qword_B09C90);
    v25(&v30[*(v31 + 48)], v27, v6);
    sub_15F84(v28, &v30[*(v31 + 64)], &qword_DFEB38, &qword_B09C78);
    sub_12E1C(v29, &qword_DFEB38, &qword_B09C78);
    v32 = *(v7 + 8);
    v32(v26, v6);
    v32(v39, v6);
    sub_12E1C(v28, &qword_DFEB38, &qword_B09C78);
    v32(v27, v6);
    return (v32)(v40, v6);
  }

  else
  {
    type metadata accessor for EnvironmentObjects(0);
    sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_314FA8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB60, &qword_B09C98);
  sub_AB7800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB68, &qword_B09CA0);
  sub_AB77F0();
  return sub_AB7800();
}

uint64_t sub_315074()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_36A48();
  return sub_AB75C0();
}

uint64_t sub_3151B4(uint64_t a1)
{
  if (*(a1 + 56))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_AB5520();
  }

  else
  {
    type metadata accessor for EnvironmentObjects(0);
    sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_3152BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_36A48();
  return sub_AB75C0();
}

void *sub_3153F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB7540();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 56))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_AB5510(v76);

    v23[1] = a1;
    v24 = a2;
    if (v76[0])
    {

LABEL_7:
      sub_AB7520();
      (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
      v23[0] = sub_AB7590();
      (*(v5 + 8))(v7, v4);

      sub_AB7A30();
      sub_AB5970();
      v78 = 1;
      *&v77[6] = *(&v79[7] + 6);
      *&v77[22] = *(&v79[8] + 6);
      *&v77[38] = *(&v79[9] + 6);
      v12 = sub_AB7A30();
      v14 = v13;
      v15 = sub_AB74B0();
      sub_AB7A30();
      sub_AB5970();
      *&v41[6] = *(&v79[10] + 6);
      *&v41[22] = *(&v79[11] + 6);
      *&v41[38] = *(&v79[12] + 6);
      sub_AB7480();
      v16 = sub_AB74C0();

      *&v42[0] = v15;
      WORD4(v42[0]) = 256;
      *(v42 + 10) = *v41;
      *(&v42[1] + 10) = *&v41[16];
      *(&v42[2] + 10) = *&v41[32];
      *(&v42[3] + 1) = *&v41[46];
      *&v43[0] = v16;
      *(v43 + 8) = xmmword_B09670;
      *(&v43[1] + 1) = 0x4018000000000000;
      *&v44 = v12;
      *(&v44 + 1) = v14;
      *(&v79[2] + 6) = v42[2];
      *(&v79[1] + 6) = v42[1];
      *(v79 + 6) = v42[0];
      *(&v79[6] + 6) = v44;
      *(&v79[5] + 6) = v43[1];
      *(&v79[4] + 6) = v43[0];
      *(&v79[3] + 6) = v42[3];
      v45 = v15;
      v46 = 256;
      *&v49[14] = *&v41[46];
      v48 = *&v41[16];
      *v49 = *&v41[32];
      v47 = *v41;
      v50 = v16;
      v51 = xmmword_B09670;
      v52 = 0x4018000000000000;
      v53 = v12;
      v54 = v14;
      sub_15F84(v42, v76, &qword_DFEAA0, &qword_B09B68);
      sub_12E1C(&v45, &qword_DFEAA0, &qword_B09B68);
      v17 = sub_AB7A30();
      v19 = v18;
      sub_315BD0(&v55);
      v37 = v67;
      v38 = v68;
      v39 = v69;
      LOBYTE(v40) = v70;
      v33 = v63;
      v34 = v64;
      v35 = v65;
      v36 = v66;
      v29 = v59;
      v30 = v60;
      v31 = v61;
      v32 = v62;
      *&v25[264] = v55;
      v26 = v56;
      v27 = v57;
      v28 = v58;
      v71[12] = v67;
      v71[13] = v68;
      v71[14] = v69;
      v71[8] = v63;
      v71[9] = v64;
      v71[10] = v65;
      v71[11] = v66;
      v71[4] = v59;
      v71[5] = v60;
      v71[6] = v61;
      v71[7] = v62;
      v71[0] = v55;
      v71[1] = v56;
      v71[2] = v57;
      v71[3] = v58;
      *&v71[15] = v40;
      *(&v71[15] + 1) = v17;
      *&v71[16] = v19;
      memcpy(v76, v71, sizeof(v76));
      v72[12] = v67;
      v72[13] = v68;
      v72[14] = v69;
      v72[8] = v63;
      v72[9] = v64;
      v72[10] = v65;
      v72[11] = v66;
      v72[4] = v59;
      v72[5] = v60;
      v72[6] = v61;
      v72[7] = v62;
      v72[0] = v55;
      v72[1] = v56;
      v72[2] = v57;
      v72[3] = v58;
      v73 = v40;
      v74 = v17;
      v75 = v19;
      sub_15F84(v71, v25, &qword_DFEAB0, &qword_B09B70);
      sub_12E1C(v72, &qword_DFEAB0, &qword_B09B70);
      v20 = *&v77[16];
      v21 = v24;
      *(v24 + 18) = *v77;
      *v21 = v23[0];
      *(v21 + 8) = 0;
      *(v21 + 16) = 1;
      *(v21 + 34) = v20;
      *(v21 + 50) = *&v77[32];
      *(v21 + 64) = *&v77[46];
      *(v21 + 72) = 256;
      *(v21 + 184) = *(&v79[6] + 14);
      *(v21 + 170) = v79[6];
      *(v21 + 154) = v79[5];
      *(v21 + 138) = v79[4];
      *(v21 + 74) = v79[0];
      *(v21 + 90) = v79[1];
      *(v21 + 106) = v79[2];
      *(v21 + 122) = v79[3];
      return memcpy((v21 + 192), v76, 0x108uLL);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v76);

    if (v76[0])
    {
      goto LABEL_7;
    }

    v8 = sub_AB9260();
    v9 = [objc_opt_self() systemImageNamed:v8];

    if (v9)
    {
      v10 = [objc_opt_self() configurationWithPointSize:80.0];
      v11 = [v9 imageByApplyingSymbolConfiguration:v10];

      if (v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    type metadata accessor for EnvironmentObjects(0);
    sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);
    sub_AB5F00();
    __break(1u);
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_315B64(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  return v3;
}

int64x2_t sub_315BD0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_AB7540();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB7530();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v21 = sub_AB7590();
  (*(v3 + 8))(v5, v2);

  sub_AB7A30();
  sub_AB5970();
  LOBYTE(v38) = 1;
  *&v24[3] = *&v24[27];
  *&v24[11] = *&v24[35];
  *&v24[19] = *&v24[43];
  v6 = sub_AB7480();
  KeyPath = swift_getKeyPath();
  v8 = sub_AB7A30();
  v10 = v9;
  v11 = sub_AB74B0();
  sub_AB7A30();
  sub_AB5970();
  *&v23[6] = *&v24[51];
  *&v23[22] = *&v24[59];
  *&v23[38] = *&v24[67];
  sub_AB7480();
  v12 = sub_AB74C0();

  *&v25[0] = v11;
  WORD4(v25[0]) = 256;
  *(v25 + 10) = *v23;
  *(&v25[1] + 10) = *&v23[16];
  *(&v25[2] + 10) = *&v23[32];
  *(&v25[3] + 1) = *&v23[46];
  *&v26[0] = v12;
  *(v26 + 8) = xmmword_B09670;
  *(&v26[1] + 1) = 0x4008000000000000;
  *&v27 = v8;
  *(&v27 + 1) = v10;
  v28 = v11;
  v38 = v25[0];
  v39 = v25[1];
  v43 = v26[1];
  v44 = v27;
  v41 = v25[3];
  v42 = v26[0];
  v40 = v25[2];
  v29 = 256;
  *&v32[14] = *&v23[46];
  v33 = v12;
  *v32 = *&v23[32];
  v31 = *&v23[16];
  v30 = *v23;
  v34 = xmmword_B09670;
  v35 = 0x4008000000000000;
  v36 = v8;
  v37 = v10;
  sub_15F84(v25, &v22, &qword_DFEAA0, &qword_B09B68);
  sub_12E1C(&v28, &qword_DFEAA0, &qword_B09B68);
  v13 = sub_AB6AA0();
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = *v24;
  *(a1 + 34) = *&v24[8];
  *(a1 + 50) = *&v24[16];
  *(a1 + 64) = *&v24[23];
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v6;
  v14 = v38;
  v15 = v39;
  v16 = v41;
  *(a1 + 120) = v40;
  *(a1 + 104) = v15;
  *(a1 + 88) = v14;
  v17 = v42;
  v18 = v43;
  *(a1 + 184) = v44;
  *(a1 + 168) = v18;
  *(a1 + 152) = v17;
  *(a1 + 136) = v16;
  *(a1 + 200) = v13;
  result = vdupq_n_s64(0x4067C00000000000uLL);
  *(a1 + 208) = result;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return result;
}

uint64_t sub_315F3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v149 = a2;
  *&v150 = a1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEAD0, &unk_B06D00);
  v139 = *(v143 - 8);
  __chkstk_darwin();
  v127 = &v126 - v3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFB930, &qword_B09B90);
  v138 = *(v142 - 8);
  __chkstk_darwin();
  v133 = &v126 - v4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAE0, &qword_B09B98);
  __chkstk_darwin();
  v131 = &v126 - v5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAE8, &qword_B09BA0);
  __chkstk_darwin();
  v132 = &v126 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAF0, &qword_B09BA8);
  __chkstk_darwin();
  v136 = &v126 - v7;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEAF8, &qword_B09BB0);
  __chkstk_darwin();
  v140 = &v126 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB00, &qword_B09BB8);
  __chkstk_darwin();
  v144 = &v126 - v9;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB08, &qword_B09BC0);
  __chkstk_darwin();
  *&v148 = &v126 - v10;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEB10, &qword_B09BC8);
  __chkstk_darwin();
  v156 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v126 - v12;
  __chkstk_darwin();
  v157 = &v126 - v13;
  v146 = *a1;
  *&v175 = JSSocialLightIdentityCreator.inputFieldTitle.getter();
  *(&v175 + 1) = v14;
  v145 = sub_36A48();
  v15 = sub_AB6F20();
  v17 = v16;
  v19 = v18;
  sub_AB6CB0();
  v20 = sub_AB6E80();
  v22 = v21;
  v24 = v23;

  sub_36B74(v15, v17, v19 & 1);

  sub_AB6BF0();
  v25 = sub_AB6E00();
  v27 = v26;
  v29 = v28;
  sub_36B74(v20, v22, v24 & 1);

  sub_AB74E0();
  v30 = sub_AB6E10();
  v153 = v31;
  v154 = v30;
  v33 = v32;
  v155 = v34;

  sub_36B74(v25, v27, v29 & 1);

  v35 = sub_AB6AA0();
  v151 = v33 & 1;
  v152 = v35;
  LOBYTE(v175) = v33 & 1;
  LOBYTE(v166) = 0;
  sub_AB6360();
  v36 = *(v150 + 56);
  v37 = *(v150 + 64);
  type metadata accessor for EnvironmentObjects(0);
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);
  v126 = v37;
  sub_AB5EF0();
  swift_getKeyPath();
  sub_AB5F10();

  v38 = v127;
  sub_AB7B00();

  if (v36)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(&v175);

    v166 = v175;
    v39 = swift_allocObject();
    v40 = v150;
    v41 = *(v150 + 48);
    *(v39 + 48) = *(v150 + 32);
    *(v39 + 64) = v41;
    *(v39 + 80) = *(v40 + 64);
    v42 = *(v40 + 16);
    *(v39 + 16) = *v40;
    *(v39 + 32) = v42;
    sub_31A604(v40, &v175);
    sub_36A00(&qword_DFB9C8, &unk_DFEAD0, &unk_B06D00, &protocol conformance descriptor for TextField<A>);
    v43 = v133;
    v44 = v143;
    sub_AB7330();
    (*(v139 + 8))(v38, v44);

    v45 = sub_AB6B90();
    KeyPath = swift_getKeyPath();
    v47 = v131;
    (*(v138 + 32))(v131, v43, v142);
    v48 = (v47 + *(v129 + 36));
    *v48 = KeyPath;
    v48[1] = v45;
    v49 = swift_getKeyPath();
    v50 = v132;
    sub_36B0C(v47, v132, &qword_DFEAE0, &qword_B09B98);
    v51 = v50 + *(v128 + 36);
    *v51 = v49;
    *(v51 + 8) = 0;
    LOBYTE(v49) = sub_AB6AD0();
    sub_AB5690();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v136;
    sub_36B0C(v50, v136, &qword_DFEAE8, &qword_B09BA0);
    v61 = v60 + *(v130 + 36);
    *v61 = v49;
    *(v61 + 8) = v53;
    *(v61 + 16) = v55;
    *(v61 + 24) = v57;
    *(v61 + 32) = v59;
    *(v61 + 40) = 0;
    v62 = sub_AB7480();
    v63 = swift_getKeyPath();
    v64 = v60;
    v65 = v140;
    sub_36B0C(v64, v140, &qword_DFEAF0, &qword_B09BA8);
    v66 = (v65 + *(v135 + 36));
    *v66 = v63;
    v66[1] = v62;
    sub_AB7A30();
    sub_AB5970();
    v67 = v65;
    v68 = v144;
    sub_36B0C(v67, v144, &qword_DFEAF8, &qword_B09BB0);
    v69 = (v68 + *(v137 + 36));
    v70 = v208[1];
    *v69 = v208[0];
    v69[1] = v70;
    v69[2] = v208[2];
    LODWORD(v62) = sub_AB6750();
    LOBYTE(v63) = sub_AB6AA0();
    v71 = v148;
    sub_36B0C(v68, v148, &qword_DFEB00, &qword_B09BB8);
    v72 = v71 + *(v141 + 36);
    *v72 = v62;
    *(v72 + 4) = 1048576000;
    *(v72 + 8) = v63;
    v73 = v147;
    v74 = &v147[*(v134 + 36)];
    v75 = *(sub_AB5E60() + 20);
    v76 = enum case for RoundedCornerStyle.continuous(_:);
    v77 = sub_AB63A0();
    (*(*(v77 - 8) + 104))(&v74[v75], v76, v77);
    __asm { FMOV            V0.2D, #8.0 }

    *v74 = _Q0;
    *&v74[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20, &qword_AFE410) + 36)] = 256;
    sub_36B0C(v71, v73, &qword_DFEB08, &qword_B09BC0);
    sub_36B0C(v73, v157, &unk_DFEB10, &qword_B09BC8);
    *&v175 = JSSocialLightIdentityCreator.inputFieldSubtitle.getter();
    *(&v175 + 1) = v83;
    v84 = sub_AB6F20();
    v86 = v85;
    LOBYTE(v75) = v87;
    sub_AB6CB0();
    v88 = sub_AB6E80();
    v90 = v89;
    LOBYTE(v71) = v91;

    sub_36B74(v84, v86, v75 & 1);

    sub_AB6BF0();
    v92 = sub_AB6E00();
    v146 = v93;
    v147 = v92;
    LOBYTE(v86) = v94;
    v96 = v95;
    sub_36B74(v88, v90, v71 & 1);

    v97 = swift_getKeyPath();
    v141 = v97;
    LOBYTE(v175) = v86 & 1;
    LOBYTE(v73) = v86 & 1;
    LODWORD(v140) = v86 & 1;
    LOBYTE(v166) = 0;
    v145 = sub_AB74E0();
    v144 = swift_getKeyPath();
    v142 = swift_getKeyPath();
    LODWORD(v143) = sub_AB6A90();
    sub_AB5690();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    LOBYTE(v175) = 0;
    v106 = v156;
    sub_15F84(v157, v156, &unk_DFEB10, &qword_B09BC8);
    *&v163 = v154;
    *(&v163 + 1) = v153;
    LOBYTE(v164) = v151;
    *(&v164 + 1) = *v207;
    DWORD1(v164) = *&v207[3];
    *(&v164 + 1) = v155;
    LOBYTE(v165[0]) = v152;
    *(v165 + 1) = *v206;
    DWORD1(v165[0]) = *&v206[3];
    v150 = xmmword_AFB130;
    *(v165 + 8) = xmmword_AFB130;
    v148 = xmmword_B09680;
    *(&v165[1] + 8) = xmmword_B09680;
    BYTE8(v165[2]) = 0;
    v107 = v165[1];
    v108 = v149;
    v149[2] = v165[0];
    v108[3] = v107;
    *(v108 + 57) = *(&v165[1] + 9);
    v109 = v164;
    *v108 = v163;
    v108[1] = v109;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB28, &qword_B09C38);
    sub_15F84(v106, v108 + *(v110 + 48), &unk_DFEB10, &qword_B09BC8);
    v111 = v108 + *(v110 + 64);
    v112 = v146;
    v113 = v147;
    *&v166 = v147;
    *(&v166 + 1) = v146;
    LOBYTE(v167) = v73;
    *(&v167 + 1) = *v158;
    DWORD1(v167) = *&v158[3];
    v114 = v96;
    *(&v167 + 1) = v96;
    *&v168 = v97;
    *(&v168 + 1) = 3;
    LOBYTE(v169) = 0;
    *(&v169 + 1) = 256;
    *(&v169 + 3) = v159;
    BYTE7(v169) = v160;
    v116 = v144;
    v115 = v145;
    *(&v169 + 1) = v144;
    *&v170 = v145;
    v117 = v142;
    *(&v170 + 1) = v142;
    LOBYTE(v171) = 0;
    DWORD1(v171) = *&v162[3];
    *(&v171 + 1) = *v162;
    LOBYTE(v108) = v143;
    BYTE8(v171) = v143;
    *(&v171 + 9) = *v161;
    HIDWORD(v171) = *&v161[3];
    *&v172 = v99;
    *(&v172 + 1) = v101;
    *&v173 = v103;
    *(&v173 + 1) = v105;
    v174 = 0;
    v118 = v166;
    v119 = v167;
    v120 = v169;
    v121 = v170;
    *(v111 + 2) = v168;
    *(v111 + 3) = v120;
    *v111 = v118;
    *(v111 + 1) = v119;
    v122 = v171;
    v123 = v172;
    v124 = v173;
    v111[128] = 0;
    *(v111 + 6) = v123;
    *(v111 + 7) = v124;
    *(v111 + 4) = v121;
    *(v111 + 5) = v122;
    sub_15F84(&v163, &v175, &qword_DFE9B0, &qword_AF4F18);
    sub_15F84(&v166, &v175, &qword_DFEB30, &qword_B09C40);
    sub_12E1C(v157, &unk_DFEB10, &qword_B09BC8);
    *&v175 = v113;
    *(&v175 + 1) = v112;
    v176 = v140;
    *v177 = *v158;
    *&v177[3] = *&v158[3];
    v178 = v114;
    v179 = v141;
    v180 = 3;
    v181 = 0;
    v182 = 256;
    v183 = v159;
    v184 = v160;
    v185 = v116;
    v186 = v115;
    v187 = v117;
    v188 = 0;
    *&v189[3] = *&v162[3];
    *v189 = *v162;
    v190 = v108;
    *&v191[3] = *&v161[3];
    *v191 = *v161;
    v192 = v99;
    v193 = v101;
    v194 = v103;
    v195 = v105;
    v196 = 0;
    sub_12E1C(&v175, &qword_DFEB30, &qword_B09C40);
    sub_12E1C(v156, &unk_DFEB10, &qword_B09BC8);
    v197[0] = v154;
    v197[1] = v153;
    v198 = v151;
    *v199 = *v207;
    *&v199[3] = *&v207[3];
    v200 = v155;
    v201 = v152;
    *v202 = *v206;
    *&v202[3] = *&v206[3];
    v203 = v150;
    v204 = v148;
    v205 = 0;
    return sub_12E1C(v197, &qword_DFE9B0, &qword_AF4F18);
  }

  else
  {
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_316E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_316EE4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_316F64(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_316FE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v4 == 32 && v5 == 0xE100000000000000;
  if (v6 || (result = sub_ABB3C0(), (result & 1) != 0))
  {
    if (*(a3 + 56))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_AB5520();
    }

    else
    {
      type metadata accessor for EnvironmentObjects(0);
      sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);
      result = sub_AB5F00();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_3170E8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v4;
  v9 = *(v2 + 64);
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = sub_AB6440();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA18, &qword_B09B18);
  return sub_314614(v8, (a2 + *(v6 + 44)));
}

void sub_317184()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0, &qword_AF8BD0);
  __chkstk_darwin();
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0, &qword_B3CA10);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v19 - v7;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E8, &unk_B09A10);
  v9 = *(v19[0] - 8);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = v19 - v11;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewDidLoad", v10);
  sub_317594();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  sub_AB54E0();
  swift_endAccess();
  sub_60044();
  v13 = sub_ABA150();
  v19[1] = v13;
  v14 = sub_ABA130();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_36A00(&unk_DFE9F0, &qword_DFE9E0, &qword_B3CA10, &protocol conformance descriptor for Published<A>.Publisher);
  sub_319DA0(&qword_DEA668, sub_60044, &protocol conformance descriptor for OS_dispatch_queue);
  sub_AB5590();
  sub_12E1C(v4, &unk_DFA9F0, &qword_AF8BD0);
  (*(v6 + 8))(v8, v5);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_36A00(&unk_DFEA00, &qword_DFE9E8, &unk_B09A10, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v15 = v19[0];
  v16 = sub_AB55C0();
  (*(v9 + 8))(v12, v15);

  *&v1[qword_DFE788] = v16;

  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    [v17 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_317594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF82B0;
  *(v2 + 32) = CNContactThumbnailImageDataKey;
  v42 = v2;
  v3 = objc_opt_self();
  v4 = CNContactThumbnailImageDataKey;
  v5 = [v3 descriptorForRequiredKeysForStyle:0];
  sub_AB9730();
  if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v6 = [objc_allocWithZone(CNContactStore) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10, &unk_AFF5C0);
  isa = sub_AB9740().super.isa;
  *&v45[0] = 0;
  v8 = [v6 _ios_meContactWithKeysToFetch:isa error:v45];
  v9 = *&v45[0];

  if (v8)
  {
    v10 = [v3 stringFromContact:v8 style:0];
    if (v10)
    {
      v11 = v10;
      v12 = sub_AB92A0();
      v14 = v13;

      swift_getKeyPath();
      swift_getKeyPath();
      *&v45[0] = v12;
      *(&v45[0] + 1) = v14;

      sub_AB5520();
      v15 = &v1[qword_DFE798];
      *v15 = v12;
      v15[1] = v14;
    }

    else
    {
      if (qword_DE67A8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
      UnfairLock.locked<A>(_:)(sub_90048);
      v48 = v43[6];
      v49 = v43[7];
      v50 = v43[8];
      v51 = v44;
      v45[2] = v43[2];
      v45[3] = v43[3];
      v46 = v43[4];
      v47 = v43[5];
      v45[0] = v43[0];
      v45[1] = v43[1];
      if (sub_90064(v45) == 1)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      else
      {
        v17 = *(&v46 + 1);
        v16 = v46;

        sub_12E1C(v43, &unk_E05300, &unk_AFA030);
      }

      v18 = &v1[qword_DFE798];
      *v18 = v16;
      *(v18 + 1) = v17;
    }

    v19 = [v8 thumbnailImageData];
    if (v19)
    {
      v20 = v19;
      v21 = sub_AB3260();
      v23 = v22;

      v24 = objc_allocWithZone(UIImage);
      sub_90090(v21, v23);
      v25 = sub_AB3250().super.isa;
      v26 = [v24 initWithData:v25];

      sub_466B8(v21, v23);
      swift_getKeyPath();
      swift_getKeyPath();
      *&v45[0] = v26;

      v27 = v26;
      sub_AB5520();
      sub_466B8(v21, v23);
    }

    else
    {
      v28 = [v1 view];
      if (v28)
      {
        v29 = v28;

        v30 = [v29 effectiveUserInterfaceLayoutDirection];

        sub_318CF0(v1);
        v31 = objc_allocWithZone(MusicMonogramArtworkToken);
        v32 = sub_AB9260();

        v33 = [v31 initWithFullName:v32 rightToLeft:v30 == &dword_0 + 1];

        if (v33)
        {
          v34 = [objc_opt_self() sharedMonogramArtworkDataSource];
          v35 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v33 dataSource:v34];
          [v35 setFittingSize:{250.0, 250.0}];
          v36 = [v1 traitCollection];
          [v36 displayScale];
          v38 = v37;

          [v35 setDestinationScale:v38];
          v39 = sub_AB9260();
          [v35 setCacheIdentifier:v39 forCacheReference:*&v1[qword_DFE7A0]];

          v40 = swift_allocObject();
          *(v40 + 16) = v1;
          v41 = v1;
          MPArtworkCatalog.requestImage(_:)(sub_319FB4, v40);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {

    sub_AB3050();

    swift_willThrow();
  }
}

void sub_317C24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v6 = v2 & 0xFFFFFFFFFFFFLL;
      }

      sub_17FE5C(v6 != 0);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_317CC4(void *a1)
{
  v1 = a1;
  sub_317184();
}

void sub_317D0C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 bounds];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [objc_opt_self() music_defaultLayoutInsetsInView:v3];

  sub_ABA530();
  v6 = v5;
  sub_AB64B0();
  v8 = v7;
  [v0 preferredContentSize];
  if (v8 != v9)
  {
    [v0 preferredContentSize];
    [v0 setPreferredContentSize:?];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v10);

  if (v10 != v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v6;

    sub_AB5520();
  }
}

void sub_317EE0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_317D0C();
}

void sub_317F38(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_60044();
    v19 = sub_ABA150();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_31A180;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_52;
    v14 = _Block_copy(aBlock);
    v18 = v7;
    v15 = v14;
    v17 = v12;
    swift_errorRetain();

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_319DA0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    v16 = v19;
    sub_ABA160();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v18);
    _Block_release(v15);
  }
}

void sub_318258(void *a1, uint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setUserInteractionEnabled:1];

    if (a2)
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v6 = sub_AB9260();

      v7 = [objc_opt_self() alertControllerWithTitle:v6 message:0 preferredStyle:1];

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v8 = sub_AB9260();

      v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

      [v7 addAction:v9];
      [a1 presentViewController:v7 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_3184A8(void (*a1)(uint64_t), uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v13);

  v5 = v13;

  v6 = HIBYTE(*(&v5 + 1)) & 0xFLL;
  if ((*(&v5 + 1) & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [v2 view];
    if (v7)
    {
      v8 = v7;
      [v7 setUserInteractionEnabled:0];

      a1(2);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v13);

      v9 = v13;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v13);

      v10 = v13;
      v13 = v9;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v10;
      if (qword_DE67A8 != -1)
      {
        swift_once();
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a1;
      v12[4] = a2;

      sub_3821A0(&v13, sub_319A78, v12);

      sub_D3144(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_318724();
  }
}

void sub_318724()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v1 = sub_AB9260();

  v2 = [objc_opt_self() alertControllerWithTitle:v1 message:0 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v3 = sub_AB9260();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v4];
  [v0 presentViewController:v2 animated:1 completion:0];
}

void sub_318930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_AB7C10();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB7C50();
  v11 = *(v21 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_60044();
    v20 = sub_ABA150();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a3;
    v16[5] = a4;
    aBlock[4] = sub_319ACC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_107;
    v17 = _Block_copy(aBlock);
    v19 = v15;
    swift_errorRetain();

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_319DA0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    v18 = v20;
    sub_ABA160();

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v21);
    _Block_release(v17);
  }
}

id sub_318C60(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = [a1 view];
  if (result)
  {
    v6 = result;
    v7 = 1;
    [result setUserInteractionEnabled:1];

    if (a2)
    {
      sub_318724();
      v7 = 0;
    }

    return a3(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_318CF0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v7);

  v1 = v7[0];

  v2 = HIBYTE(*(&v1 + 1)) & 0xFLL;
  if ((*(&v1 + 1) & 0x2000000000000000) == 0)
  {
    v2 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v7);

    return *&v7[0];
  }

  else
  {
    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
    UnfairLock.locked<A>(_:)(sub_31A7A4);
    v10 = v5[6];
    v11 = v5[7];
    v12 = v5[8];
    v13 = v6;
    v7[2] = v5[2];
    v7[3] = v5[3];
    v8 = v5[4];
    v9 = v5[5];
    v7[0] = v5[0];
    v7[1] = v5[1];
    if (sub_90064(v7) == 1)
    {
      return 0;
    }

    else
    {
      v4 = v8;

      sub_12E1C(v5, &unk_E05300, &unk_AFA030);
      return v4;
    }
  }
}

double sub_318ED8(void *a1, char a2, void *a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_60044();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a1;
    v7 = a3;
    sub_21A5DC(a1, 0);
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_31A000, v6);
  }

  return result;
}

uint64_t sub_318FBC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = a2;
  return sub_AB5520();
}

double sub_31903C()
{
  sub_176DC(v0 + qword_DFE780);

  return result;
}

double sub_3190B0(uint64_t a1)
{
  sub_176DC(a1 + qword_DFE780);

  return result;
}

double sub_3191A4@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_319224(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

void sub_3192A0(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  *a4 = v5;
}

uint64_t sub_31931C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_AB5520();
}

uint64_t sub_319390()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__hostedWidth;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE9D0, &unk_B0F740);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__fallbackUserImage, v6);

  return swift_deallocClassInstance();
}

void sub_319528(uint64_t a1)
{
  sub_299798(319, &qword_DFE850, &type metadata for CGFloat);
  if (v1 <= 0x3F)
  {
    sub_299798(319, &qword_DFE858, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_31964C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_31964C(uint64_t a1)
{
  if (!qword_DFE860[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E00030, &unk_AF98E0);
    v1 = sub_AB5540();
    if (!v2)
    {
      atomic_store(v1, qword_DFE860);
    }
  }
}

uint64_t sub_3196DC()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE9D0, &unk_B0F740);
  v1 = *(v20 - 8);
  __chkstk_darwin();
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__hostedWidth;
  v21 = 0;
  sub_AB54D0();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__name;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_AB54D0();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__userImage;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00030, &unk_AF98E0);
  sub_AB54D0();
  v15 = *(v1 + 32);
  v16 = v20;
  v15(v0 + v14, v3, v20);
  v17 = OBJC_IVAR____TtC16MusicApplicationP33_78BED35923ECDB0B379CC3510D6D460518EnvironmentObjects__fallbackUserImage;
  v21 = 0;
  sub_AB54D0();
  v15(v0 + v17, v3, v16);
  return v0;
}

uint64_t sub_319A00()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_319A38()
{

  return swift_deallocObject();
}

uint64_t sub_319A84()
{

  return swift_deallocObject();
}

double block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_319B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE900, &qword_B098E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_319B78()
{
  result = qword_DFE920;
  if (!qword_DFE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE908, &qword_B098E8);
    sub_319C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE920);
  }

  return result;
}

unint64_t sub_319C04()
{
  result = qword_DFE928;
  if (!qword_DFE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE900, &qword_B098E0);
    sub_319CBC();
    sub_36A00(&qword_DEDBF8, &qword_DFE960, &unk_AFC1B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE928);
  }

  return result;
}

unint64_t sub_319CBC()
{
  result = qword_DFE930;
  if (!qword_DFE930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE918, &qword_B09928);
    sub_36A00(&qword_DFE938, &qword_DFE940, &qword_B099A8, &protocol conformance descriptor for VStack<A>);
    sub_36A00(&qword_DFE948, &unk_DFE950, &unk_B099B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFE930);
  }

  return result;
}

uint64_t sub_319DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_319DF0(void *a1)
{
  *(v1 + qword_DFE780 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_DFE788) = 0;
  v3 = qword_DFE790;
  type metadata accessor for EnvironmentObjects(0);
  swift_allocObject();
  *(v1 + v3) = sub_3196DC();
  v4 = (v1 + qword_DFE798);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = qword_DFE7A0;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v5) = swift_allocObject();
  sub_319DA0(&qword_DFE988, type metadata accessor for EnvironmentObjects, &unk_B097F0);

  a1;
  sub_AB5B50();
  sub_AB7630();
  sub_AB7630();
  return sub_AB64F0();
}

uint64_t sub_319F7C()
{

  return swift_deallocObject();
}

uint64_t sub_319FC0()
{

  return swift_deallocObject();
}

void sub_31A058()
{
  v1 = v0;
  *(v0 + qword_DFE780 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_DFE788) = 0;
  v2 = qword_DFE790;
  type metadata accessor for EnvironmentObjects(0);
  swift_allocObject();
  *(v0 + v2) = sub_3196DC();
  v3 = (v0 + qword_DFE798);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = qword_DFE7A0;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v4) = swift_allocObject();
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_31A140()
{

  return swift_deallocObject();
}

uint64_t sub_31A188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_31A1D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_31A230()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFE908, &qword_B098E8);
  sub_319B78();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_31A2C0()
{
  result = qword_DFEA40;
  if (!qword_DFEA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA30, &qword_B09B30);
    sub_31A378();
    sub_36A00(&qword_DFEAA8, &qword_DFEAB0, &qword_B09B70, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA40);
  }

  return result;
}

unint64_t sub_31A378()
{
  result = qword_DFEA48;
  if (!qword_DFEA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA50, &qword_B09B40);
    sub_31A430();
    sub_36A00(&qword_DFEA98, &qword_DFEAA0, &qword_B09B68, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA48);
  }

  return result;
}

unint64_t sub_31A430()
{
  result = qword_DFEA58;
  if (!qword_DFEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA60, &qword_B09B48);
    sub_31A4E8();
    sub_36A00(&qword_DEFED0, &qword_DFEA90, &qword_B09B60, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA58);
  }

  return result;
}

unint64_t sub_31A4E8()
{
  result = qword_DFEA68;
  if (!qword_DFEA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFEA70, &qword_B09B50);
    sub_31A574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA68);
  }

  return result;
}

unint64_t sub_31A574()
{
  result = qword_DFEA78;
  if (!qword_DFEA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DFEA80, &qword_B09B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEA78);
  }

  return result;
}

uint64_t sub_31A64C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB5F80();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

void sub_31A7BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = 0x80;
  v5 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = objc_opt_self();
  v7 = [v6 buttonWithType:1];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemGrayColor];
  [v9 setTintColor:v10];

  [v6 easyTouchDefaultHitRectInsets];
  [v9 setHitRectInsets:?];
  v11 = objc_opt_self();
  v12 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v13 = [v11 imageNamed:v12 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v13)
  {
    v14 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton;
    [v9 setImage:v13 forState:0];

    *&v2[v14] = v9;
    v15 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_textDrawingCache;
    type metadata accessor for TextDrawing.Cache();
    swift_allocObject();
    *&v2[v15] = TextDrawing.Cache.init()();
    *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView] = 0;
    v16 = &v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
    type metadata accessor for InformativeView();
    *v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v16[1] = 0;
    *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_inlinePopup] = a1;
    v17 = a1;
    v18 = sub_31E0B0(v17);
    v19 = *v16;
    v20 = v16[1];
    *v16 = v18;
    v16[1] = v21;
    sub_31E2D0(v19, v20);
    v33.receiver = v2;
    v33.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
    v23 = &v17[OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate];
    swift_beginAccess();
    *(v23 + 1) = &off_D0B9E0;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    v32.receiver = v22;
    v32.super_class = ObjectType;
    v24 = v22;

    v25 = objc_msgSendSuper2(&v32, "title");
    if (v25)
    {
      v26 = v25;
      v27 = sub_AB92A0();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = sub_AB9260();

    v31.receiver = v24;
    v31.super_class = ObjectType;
    objc_msgSendSuper2(&v31, "setTitle:", v30);

    sub_31AD8C(v27, v29);
  }

  else
  {
    __break(1u);
  }
}

double sub_31AB50(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "title");
  if (!v5)
  {
    v7 = 0;
    v9 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v6 = v5;
  v7 = sub_AB92A0();
  v9 = v8;

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_AB9260();

LABEL_6:
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "setTitle:", v10);

  sub_31AD8C(v7, v9);

  return result;
}

void sub_31AD8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40, &qword_AFA040);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v30[-v7];
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v34, "title", v6);
  if (!v9)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }

  v10 = v9;
  v11 = sub_AB92A0();
  v13 = v12;

  if (!a2)
  {

LABEL_12:
    v16 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    if (v16)
    {
      v33.receiver = v2;
      v33.super_class = ObjectType;
      v17 = v16;
      v18 = objc_msgSendSuper2(&v33, "title");
      if (v18)
      {
        v19 = v18;
        v20 = sub_AB92A0();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v31 = v20;
      v32 = v22;
      sub_AB3550();
      v23 = sub_AB35C0();
      (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
      sub_36A48();
      v24 = sub_ABAA50();
      v26 = v25;
      sub_12E1C(v8, &qword_DEAC40, &qword_AFA040);

      v27 = &v17[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
      swift_beginAccess();
      *v27 = v24;
      v27[1] = v26;

      v28 = *&v17[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

      v29 = String.trim()();

      swift_beginAccess();
      v28[7] = v29;

      sub_2EB704();
      [v17 setNeedsLayout];
    }

    return;
  }

  if (v11 == a1 && v13 == a2)
  {

    return;
  }

  v15 = sub_ABB3C0();

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_31B040()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v5;
  if (qword_DE6AA0 != -1)
  {
    swift_once();
  }

  [v6 music_setLayoutInsets:{*&qword_DFEB90, *&qword_DFEB98, *&qword_DFEBA0, *&qword_DFEBA8}];

  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView];
  [v7 addSubview:v9];

  if (*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView])
  {
    [v9 addSubview:?];
  }

  [v9 setClipsToBounds:1];
  [v9 _setContinuousCornerRadius:8.0];
  v10 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_13C80(0, &qword_E0BC00, MPButton_ptr);
  ControlEventHandling<>.on(_:handler:)(64, sub_31E738, v11, v12);

  [v9 addSubview:v10];
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
  sub_31E280(v13, v14);
  sub_31B4E8(v13, v14);
  sub_31E2D0(v13, v14);
}

double sub_31B2AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_inlinePopup);

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10 && (v11 = v10, sub_12B2FC(), v13 = v12, v15 = v14, v11, v13))
    {
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(ObjectType, v15);
      v18 = v17;
      swift_unknownObjectRelease();
      v19 = swift_getObjectType();
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      sub_3B8F68(v19);
      v20 = sub_21CCAC(1, v5, v25, v19, v18);
      (*(v3 + 8))(v5, v2);
      sub_12E1C(v25, &qword_DF2BD0, &unk_AFDC00);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
    }

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      sub_12AFE8();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    JSInlinePopup.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(v20, v24);
  }

  return result;
}

void sub_31B4E8(unint64_t a1, void *a2)
{
  v3 = v2;
  sub_31D1B4(a1, a2, v2);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v34 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView;
    v35 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    if (v35)
    {
      v36 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    }

    else
    {
      type metadata accessor for TitleSectionHeaderView(0);
      v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v35 = 0;
    }

    v44 = qword_DE6A98;
    v45 = v35;
    v46 = v36;
    if (v44 != -1)
    {
      swift_once();
    }

    [v46 music_setLayoutInsets:{0.0, 8.0, 0.0, *&qword_DFEB80 + 0.0 + 10.0 + 8.0}];

    v43 = *&v3[v34];
    *&v3[v34] = v46;
    v47 = v46;
    sub_31CC4C(v43);
  }

  else
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_inlinePopup];
    v6 = (v5 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    v9 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title);
    v10 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title);
    v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_title + 8);
    *v9 = v8;
    v9[1] = v7;

    sub_22E6D0(v10, v11);

    v12 = (v5 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
    swift_beginAccess();
    v14 = *v12;
    v13 = v12[1];
    v15 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message);
    v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message);
    v17 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8);
    *v15 = v14;
    v15[1] = v13;

    sub_22E7B0(v16, v17);

    v18 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
    swift_beginAccess();
    v19 = *(v5 + v18);
    if (v19)
    {
      v20 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode);
      *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode) = 0;
      v21 = v19;
      v22 = sub_22EB10(v20);
      v23 = (*(&stru_68.size + (swift_isaMask & *v21)))(v22);
      v24 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v25 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v26 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8);
      *v24 = v23;
      v24[1] = v27;
      sub_22E90C(v25, v26);

      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v21;
      v30 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      v31 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      v32 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler + 8);
      *v30 = sub_31E398;
      v30[1] = v29;
      v33 = v21;

      sub_17654(v31, v32);
      sub_22EA2C();
    }

    else
    {
      v37 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v38 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle);
      v39 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8);
      *v37 = 0;
      v37[1] = 0;
      sub_22E90C(v38, v39);

      v40 = (a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      v41 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler);
      v42 = *(a1 + OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler + 8);
      *v40 = 0;
      v40[1] = 0;
      sub_17654(v41, v42);
      sub_22EA2C();
    }

    v43 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
    *&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView] = 0;
    sub_31CC4C(v43);
  }

  if ([v3 isViewLoaded])
  {
    sub_31C49C();
    sub_31C210();
    v48 = [v3 view];
    if (v48)
    {
      v49 = v48;
      [v48 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_31B948(unsigned __int8 a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState;
  v4 = v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = a1;
  if ((*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind] & 0x8000000000000000) != 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    sub_69014(v4, v1[v3], v6, v7);
  }
}

void sub_31BA90(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v3 = a1 | 0x40;
  v4 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState;
  v5 = v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
  v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = v3;
  if ((*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind] & 0x8000000000000000) != 0)
  {
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    sub_69014(v5, v1[v4], v7, v8);
  }
}

void sub_31BB7C(char a1, SEL *a2, unsigned __int8 a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, *a2, a1 & 1);
  v7 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState;
  v8 = v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
  v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState] = a3;
  if ((*&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind] & 0x8000000000000000) != 0)
  {
    v9 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    sub_69014(v8, v3[v7], v10, v11);
  }
}

id sub_31BC74()
{
  v53.receiver = v0;
  v53.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v53, "viewDidLayoutSubviews");
  v1 = [v0 traitCollection];
  [v1 displayScale];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  [result effectiveUserInterfaceLayoutDirection];

  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  [result music_inheritedLayoutInsets];
  v6 = v5;
  v8 = v7;

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  UIEdgeInsetsInsetRect(v11, v13, v15, v17, v6, v8);
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView];
  sub_ABA490();
  [v18 setFrame:?];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if (qword_DE6A98 != -1)
  {
    swift_once();
  }

  v27 = *algn_DFEB88;
  rect = *&qword_DFEB80;
  v28 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
  if (v28)
  {
    v29 = v28;
    [v29 music_inheritedLayoutInsets];
    v32 = [v0 traitCollection];
    sub_18A8A8(v32, 6uLL, 0, 1);
    v34 = v33;
    v51 = v33;

    v54.origin.x = v20;
    v54.origin.y = v22;
    v54.size.width = v24;
    v54.size.height = v26;
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v20;
    v55.origin.y = v22;
    v55.size.width = v24;
    v55.size.height = v34;
    CGRectGetHeight(v55);
    v56.origin.x = 0.0;
    v56.origin.y = 0.0;
    v56.size.width = rect;
    v56.size.height = v27;
    CGRectGetHeight(v56);
    sub_AB39F0();
    v37 = MinY + fmax(v36, 10.0);
    v57.origin.x = v20;
    v57.origin.y = v22;
    v57.size.width = v24;
    v57.size.height = v26;
    MaxX = CGRectGetMaxX(v57);
    v58.origin.x = 0.0;
    v58.origin.y = v37;
    v39 = v24;
    v40 = v20;
    v41 = v37;
    v58.size.width = rect;
    v58.size.height = v27;
    v42 = MaxX - (CGRectGetWidth(v58) + 10.0);
    v59.origin.x = v40;
    v59.origin.y = v22;
    v59.size.width = v39;
    v59.size.height = v51;
    MaxY = CGRectGetMaxY(v59);
    v60.origin.x = v42;
    v60.origin.y = v41;
    v60.size.width = rect;
    v60.size.height = v27;
    v44 = CGRectGetMaxY(v60);
    if (MaxY > v44)
    {
      v45 = MaxY;
    }

    else
    {
      v45 = v44;
    }

    v61.origin.x = v40;
    v61.origin.y = v45;
    v61.size.width = v39;
    v61.size.height = v26;
    CGRectGetMinY(v61);
    v62.origin.x = v40;
    v62.origin.y = v22;
    v62.size.width = v39;
    v62.size.height = v26;
    CGRectGetMinY(v62);
    sub_ABA490();
    [v29 setFrame:?];

    [v18 bringSubviewToFront:v29];
  }

  else
  {
    v63.origin.x = v20;
    v63.origin.y = v22;
    v63.size.width = v24;
    v63.size.height = v26;
    CGRectGetMaxX(v63);
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.width = rect;
    v64.size.height = v27;
    CGRectGetWidth(v64);
    v65.origin.x = v20;
    v65.origin.y = v22;
    v65.size.width = v24;
    v65.size.height = v26;
    CGRectGetMinY(v65);
  }

  v46 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton];
  sub_ABA490();
  [v46 setFrame:?];
  v47 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  if ((v47 & 0x8000000000000000) == 0)
  {
    v48 = v47;
LABEL_16:
    sub_ABA490();
    [v48 setFrame:?];

    return [v18 bringSubviewToFront:v46];
  }

  v49 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
  v50 = (v47 & 0x7FFFFFFFFFFFFFFFLL);
  result = [v49 view];
  if (result)
  {
    v48 = result;
    sub_31E2D0(v47, v49);
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_31C210()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v4 = *(v2 + 1);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v8 = qword_DE6C78;
    v9 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = v4;
    if (v8 != -1)
    {
      swift_once();
    }

    v7 = [qword_E718B8 colorWithAlphaComponent:0.5];
  }

  else
  {
    v5 = qword_DE6C78;
    v6 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_E718B8;
  }

  v18 = v7;
  sub_31E2D0(v3, v4);
  v11 = [v1 parentViewController];
  if (v11)
  {
    v12 = v11;
    if ([v11 isViewLoaded])
    {
      v13 = [v12 view];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = [v13 backgroundColor];

      if (v15)
      {
        sub_13C80(0, qword_DFAAC0, UIColor_ptr);
        v18 = v18;
        v16 = sub_ABA790();

        if (v16)
        {
          v17 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.5];

          v18 = v17;
        }
      }
    }
  }

  [*&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView] setBackgroundColor:v18];
}

void sub_31C49C()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
  sub_31E280(v1, v2);
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  [v3 music_inheritedLayoutInsets];

  sub_AB9E70();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  UIEdgeInsetsInsetRect(v16, v18, v20, v22, v6, v8);
  v25 = v23;
  if ((v1 & 0x8000000000000000) != 0)
  {
    swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    v26 = 170.0;
    if (v28 && v2)
    {
      v29 = v2;
      v30 = [v29 traitCollection];
      sub_B2768(v30, v25);
      v32 = v31;

      v26 = v32 * 3.0;
    }
  }

  else
  {
    [v1 sizeThatFits:{v23, v24}];
    v25 = v27;
  }

  if (!*&v0[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView])
  {
    goto LABEL_16;
  }

  v55 = v26;
  v56 = v8;
  v33 = [v0 view];
  if (!v33)
  {
    goto LABEL_21;
  }

  v34 = v33;
  [v33 music_inheritedLayoutInsets];

  if (qword_DE6A98 != -1)
  {
    swift_once();
  }

  v52 = v25;
  v53 = v10;
  v54 = v6;
  sub_AB9E70();
  v36 = v35;
  v38 = v37;
  v39 = [v0 view];
  if (!v39)
  {
    goto LABEL_22;
  }

  v40 = v39;
  [v39 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = [v0 traitCollection];
  sub_18A8A8(v49, 6uLL, 0, 1);
  v51 = v50;

  v6 = v54;
  v26 = v55 + v51;
  v10 = v53;
  v8 = v56;
  v25 = v52;
LABEL_16:
  [v0 setPreferredContentSize:{v8 + v12 + v25, v6 + v10 + v26}];

  sub_31E2D0(v1, v2);
}

void sub_31C8F8(void *a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];
  if (a1 && v4 == [a1 horizontalSizeClass])
  {
    v5 = [v3 preferredContentSizeCategory];
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_AB92A0();
    v9 = v8;
    if (v7 == sub_AB92A0() && v9 == v10)
    {

      goto LABEL_10;
    }

    v12 = sub_ABB3C0();

    if (v12)
    {
LABEL_10:

      return;
    }
  }

  sub_31C49C();
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];

    v3 = v14;
    goto LABEL_10;
  }

  __break(1u);
}

BOOL sub_31CAF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = *a1 >= 0 && v3 == v4;
  if (v3 < 0 && v3 == v4)
  {
    return a1[1] == a2[1];
  }

  return result;
}

void sub_31CB30()
{
  v0 = objc_opt_self();
  v1 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v4 = [v0 imageNamed:v1 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v4)
  {
    [v4 size];
    qword_DFEB80 = v2;
    *algn_DFEB88 = v3;
  }

  else
  {
    __break(1u);
  }
}

double sub_31CC20()
{
  result = -1.0;
  qword_DFEB90 = 0x4030000000000000;
  qword_DFEB98 = 0xBFF0000000000000;
  qword_DFEBA0 = 0x4030000000000000;
  qword_DFEBA8 = 0xBFF0000000000000;
  return result;
}

void sub_31CC4C(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40, &qword_AFA040);
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView;
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView];
  if (!v8)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v9 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
    swift_beginAccess();
    *&a1[v9] = 0;
    v10 = a1;

    [v10 removeFromSuperview];

    v8 = *&v2[v7];
    if (!v8)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v8 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = &v8[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  v28 = xmmword_B09CB0;
  *v11 = xmmword_B09CB0;
  v11[16] = 1;
  v12 = v8;
  sub_1846A0();
  v13 = &v12[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v13 = v28;
  v13[16] = 1;
  sub_1848CC();
  v14 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_textDrawingCache];
  v15 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
  swift_beginAccess();
  *&v12[v15] = v14;

  v31.receiver = v2;
  v31.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v31, "title");
  if (v16)
  {
    v17 = v16;
    v18 = sub_AB92A0();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v29 = v18;
  v30 = v20;
  sub_AB3550();
  v21 = sub_AB35C0();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  sub_36A48();
  v22 = sub_ABAA50();
  v24 = v23;
  sub_12E1C(v6, &qword_DEAC40, &qword_AFA040);

  v25 = &v12[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v25 = v22;
  v25[1] = v24;

  v26 = *&v12[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v27 = String.trim()();

  swift_beginAccess();
  v26[7] = v27;

  sub_2EB704();
  [v12 setNeedsLayout];
  if (qword_DE6C78 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_E718B8];
  if ([v2 isViewLoaded])
  {
    [*&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView] addSubview:v12];
  }
}

void sub_31D00C(unint64_t a1, id a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (v5 == a1)
      {
        return;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_6:
    v6 = &selRef_removeFromSuperview;
LABEL_7:
    [a1 *v6];
    goto LABEL_8;
  }

  if (v5 != a1 || v4[1] != a2)
  {
LABEL_15:
    v10 = [a2 parentViewController];
    if (!v10 || (v11 = v10, v10, v11 != v2))
    {
LABEL_8:
      v7 = *v4;
      v8 = v4[1];
      sub_31E280(*v4, v8);
      sub_31B4E8(v7, v8);

      sub_31E2D0(v7, v8);
      return;
    }

    [a2 willMoveToParentViewController:0];
    if (![a2 isViewLoaded])
    {
      goto LABEL_28;
    }

    v12 = v2[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
    if (v12 >> 6)
    {
      if (v12 >> 6 == 1)
      {
LABEL_25:
        [a2 endAppearanceTransition];
LABEL_26:
        v13 = [a2 view];
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = v13;
        [v13 removeFromSuperview];

LABEL_28:
        v6 = &selRef_removeFromParentViewController;
        a1 = a2;
        goto LABEL_7;
      }

      if (v12 == 128)
      {
        goto LABEL_26;
      }
    }

    else
    {
      [a2 endAppearanceTransition];
    }

    [a2 beginAppearanceTransition:0 animated:0];
    goto LABEL_25;
  }
}

void sub_31D1B4(unint64_t a1, id a2, char *a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v10 = [a2 parentViewController];
    if (!v10 || (v11 = v10, v10, v11 != a3))
    {
      [a3 addChildViewController:a2];
      [a2 didMoveToParentViewController:a3];
    }

    if (([a3 isViewLoaded] & 1) == 0)
    {
      goto LABEL_21;
    }

    v12 = [a2 view];
    v13 = [a3 view];
    v14 = v13;
    if (v12)
    {

      if (v14)
      {

        if (v12 == v14)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    v15 = *&a3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView];
    v16 = [a2 view];
    if (!v16)
    {
LABEL_43:
      __break(1u);
      return;
    }

    v17 = v16;
    [v15 addSubview:v16];

    v18 = a3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState];
    if (v18 != 128)
    {
      if (v18 >> 6)
      {
        if (v18 >> 6 != 1)
        {
          [a2 beginAppearanceTransition:1 animated:0];
          [a2 endAppearanceTransition];
        }
      }

      else
      {
        [a2 beginAppearanceTransition:1 animated:v18 & 1];
      }
    }

    v29 = [a2 contentScrollView];
    goto LABEL_24;
  }

  if ([a3 isViewLoaded])
  {
    v6 = [a3 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_41;
    }

    v7 = v6;
    v8 = [a1 isDescendantOfView:v6];

    if ((v8 & 1) == 0)
    {
      [*&a3[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView] addSubview:a1];
      v9 = [objc_opt_self() clearColor];
      [a1 setBackgroundColor:v9];

      v29 = 0;
LABEL_24:
      v19 = 1;
      goto LABEL_25;
    }
  }

LABEL_21:
  v19 = 0;
  v29 = 0;
LABEL_25:
  v20 = [a3 isViewLoaded];
  if (v19 && v20)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v21 = a1;
LABEL_30:
      v22 = objc_opt_self();
      v23 = [v22 clearColor];
      [v21 setBackgroundColor:v23];

      if (v29)
      {
        v24 = [v22 clearColor];
        [v29 setBackgroundColor:v24];
      }

      if ((a1 & 0x8000000000000000) == 0)
      {
        v25 = a1;
        v26 = 20.0;
        v27 = 24.0;
LABEL_36:
        [v25 music_setLayoutInsets:{0.0, v27, v26, v27}];

        goto LABEL_37;
      }

      v28 = [a2 view];
      if (v28)
      {
        v25 = v28;
        v26 = 0.0;
        v27 = 8.0;
        goto LABEL_36;
      }

      goto LABEL_42;
    }

    v21 = [a2 view];
    if (v21)
    {
      goto LABEL_30;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_37:
}

void sub_31D584(uint64_t a1, void *a2)
{
  v3 = sub_AB3430();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v67 = *(v6 - 8);
  __chkstk_darwin();
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v12 = &v57 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v57 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v68 = &v57 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v63 = v6;
  v58 = v5;
  v65 = v8;
  v66 = a2;
  v64 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v20 = v19;
  v21 = [v20 view];
  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = v21;
  sub_D5958(v75);
  v23 = v76;
  v24 = v77;
  v25 = v78;

  v79[0] = v75[0];
  v79[1] = v75[1];
  v80 = v23;
  v81 = v24;
  v82 = v25;
  PresentationSource.init(viewController:position:)(v20, v79, v74);
  v26 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v72, 0, sizeof(v72));
  v73 = 0;
  (*(*(v26 - 8) + 56))(v68, 1, 1, v26);
  sub_15F84(v72, &v69, &unk_DE8E30, "\b]\r");
  v62 = v20;
  if (*(&v70 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v27 = _s30CollectionViewSelectionHandlerVMa(0);
    v28 = swift_dynamicCast();
    v29 = *(v27 - 8);
    (*(v29 + 56))(v12, v28 ^ 1u, 1, v27);
    v30 = (*(v29 + 48))(v12, 1, v27);
    v31 = v63;
    v32 = v67;
    if (v30 != 1)
    {
      (*(v67 + 16))(v16, &v12[*(v27 + 20)], v63);
      sub_2D6C0(v12, _s30CollectionViewSelectionHandlerVMa);
      v33 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_12E1C(&v69, &unk_DE8E30, "\b]\r");
    v34 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
    v31 = v63;
    v32 = v67;
  }

  sub_12E1C(v12, &qword_E037A0, &unk_AF8B30);
  v33 = 1;
LABEL_8:
  v35 = v65;
  (*(v32 + 56))(v16, v33, 1, v31);
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36 && (v37 = v36, sub_12B2FC(), v39 = v38, v41 = v40, v37, v39))
  {
    ObjectType = swift_getObjectType();
    (*(v41 + 8))(ObjectType, v41);
    v44 = v43;
    swift_unknownObjectRelease();
    sub_15F84(v16, v14, &unk_DE8E20, &qword_AF7990);
    if ((*(v32 + 48))(v14, 1, v31) == 1)
    {
      sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
    }

    else
    {
      (*(v32 + 32))(v59, v14, v31);
      sub_2D668();
      sub_ABAD10();
    }

    v46 = swift_getObjectType();
    v47 = v58;
    sub_3B8F68(v46);
    v45 = sub_21CCAC(1, v47, &v69, v46, v44);
    (*(v60 + 8))(v47, v61);
    sub_12E1C(&v69, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    v45 = 0;
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v50 = v62;
    sub_12AFE8();
    v52 = v51;
  }

  else
  {
    v50 = v62;
    v52 = 0;
  }

  sub_15F28(v74, &v69);
  sub_15F84(v72, (v10 + 104), &unk_DE8E30, "\b]\r");
  v53 = v68;
  sub_15F84(v68, &v10[*(v35 + 28)], &unk_DEA510, "\b]\r");
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 1;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  *(v10 + 11) = 0;
  sub_2D594(&v69, v10);
  *(v10 + 12) = 0;
  v54 = *v64;
  *(&v70 + 1) = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
  sub_2D604(v10, boxed_opaque_existential_0);
  v56 = v54;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v66, 0, v45, v52, &v69);

  sub_12E1C(v53, &unk_DEA510, "\b]\r");
  sub_12E1C(v72, &unk_DE8E30, "\b]\r");
  sub_1611C(v74);
  sub_2D6C0(v10, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v69, &unk_DE8E40, &unk_AF8050);
}

uint64_t sub_31DED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_31DF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

double sub_31DFBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8);
    v3 = v1;
    sub_31B4E8(v1, v2);

    sub_31E2D0(v1, v2);
  }

  return result;
}

double sub_31E030(uint64_t a1)
{
  v2 = sub_31E0B0(a1);
  v4 = v3;
  v5 = (v1 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8);
  *v5 = v2;
  v5[1] = v3;
  sub_31E280(v2, v3);
  sub_31D00C(v6, v7);
  sub_31E2D0(v6, v7);

  sub_31E2D0(v2, v4);
  return result;
}

id sub_31E0B0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (!v3)
  {
    type metadata accessor for InformativeView();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v14 = *(a1 + v2);
  type metadata accessor for JSViewModel();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEC10, &qword_B09DF0);
  if (swift_dynamicCast())
  {
    sub_70DF8(v12, &v15);
    v5 = *__swift_project_boxed_opaque_existential_1(&v15, v17);
    v6 = objc_allocWithZone(type metadata accessor for JSSocialProfileCollectionViewController(0));
    sub_1AFD88(v5);
    v7 = v3 | 0x8000000000000000;
    __swift_destroy_boxed_opaque_existential_0(&v15);
    return v7;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_12E1C(v12, &qword_DFEC18, &qword_B09DF8);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_ABAD90(47);
  swift_getObjectType();
  v9 = sub_ABB6D0();
  v11 = v10;

  v15 = v9;
  v16 = v11;
  v18._object = 0x8000000000B5EC30;
  v18._countAndFlagsBits = 0xD00000000000002DLL;
  sub_AB94A0(v18);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

id sub_31E280(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
    a1 = a2;
  }

  return a1;
}

void sub_31E2D0(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {

    a1 = a2;
  }
}

uint64_t sub_31E320()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_31E358()
{

  return swift_deallocObject();
}

void sub_31E3A0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_appearanceState) = 0x80;
  v1 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_containerView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = objc_opt_self();
  v3 = [v2 buttonWithType:1];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemGrayColor];
  [v5 setTintColor:v6];

  [v2 easyTouchDefaultHitRectInsets];
  [v5 setHitRectInsets:?];
  v7 = objc_opt_self();
  v8 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v7 = [v7 imageNamed:v8 inBundle:qword_E71620 compatibleWithTraitCollection:0];

    if (v7)
    {
      break;
    }

    __break(1u);
LABEL_4:
    swift_once();
  }

  v9 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_closeButton;
  [v5 setImage:v7 forState:0];

  *(v0 + v9) = v5;
  v10 = OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v10) = TextDrawing.Cache.init()();
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_titleHeaderView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind);
  type metadata accessor for InformativeView();
  *v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_31E5FC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v13.receiver = v1;
  v13.super_class = ObjectType;

  v3 = objc_msgSendSuper2(&v13, "title");
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_AB9260();

  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "setTitle:", v8);

  sub_31AD8C(v5, v7);

  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSInlinePopupViewController_contentKind + 8];
    v11 = v9;
    sub_31B4E8(v9, v10);
    sub_31E2D0(v9, v10);
  }
}

void sub_31E740(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v10 = v60 - v9;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu] = 0;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  *v14 = sub_31FF10() & 1;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *&v4[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView] = 0;
  v18 = type metadata accessor for UserDetailsCell(0);
  v61.receiver = v4;
  v61.super_class = v18;
  v19 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  [v19 setAccessoryType:1];
  sub_ABA670();
  v20 = sub_ABA680();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  sub_200394(v10);
  v21 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v22 = *&v19[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];

  v23 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = v23[3];
  v28 = *(v23 + 2);
  v29 = *(v22 + 184);
  v30 = *(v22 + 152);
  v62[1] = *(v22 + 168);
  v62[2] = v29;
  v62[0] = v30;
  *(v22 + 152) = v24;
  *(v22 + 160) = v25;
  *(v22 + 168) = v26;
  *(v22 + 176) = v27;
  *(v22 + 184) = v28;
  v31 = v26;
  v32 = v27;
  v33 = v24;
  v34 = v25;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  sub_75948(v62);
  sub_B2A40(v62);

  v39 = *&v19[v21];
  v40 = qword_DE6C90;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_E718D0;
  v42 = *(v39 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  *(v39 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor) = qword_E718D0;
  if (!v42)
  {
    v45 = v41;
    goto LABEL_7;
  }

  sub_13C80(0, qword_DFAAC0, UIColor_ptr);
  v43 = v41;
  v42 = v42;
  v44 = sub_ABA790();

  if ((v44 & 1) == 0)
  {
LABEL_7:
    sub_79590();
  }

  v46 = vdupq_n_s64(0x404C000000000000uLL);
  *&v19[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v46;
  v47 = *&v19[v21];
  v48 = *(v47 + 80);
  v49 = *(v47 + 88);
  *(v47 + 80) = v46;
  sub_75614(v48, v49);
  v50 = &v19[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v51 = *v50;
  v52 = *(v50 + 1);
  *v50 = xmmword_AFB2E0;
  *(v50 + 1) = xmmword_AFB2F0;
  v60[2] = xmmword_AFB2E0;
  v60[3] = xmmword_AFB2F0;
  v60[0] = v51;
  v60[1] = v52;
  if (sub_AB38D0())
  {
    [v19 setNeedsLayout];
  }

  v53 = *&v19[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v54 = &v19[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  swift_beginAccess();
  v55 = *(v54 + 3);
  if (!(v55 >> 62))
  {
    v56 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
    if (v56)
    {
      goto LABEL_12;
    }

LABEL_20:

    return;
  }

  v56 = sub_ABB060();
  if (!v56)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v56 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v56; ++i)
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v59 = sub_36003C(i, v55, v57);
      }

      else
      {
        v59 = *(v55 + 8 * i + 32);
      }

      TextStackView.add(_:)(v59);
    }
  }
}

void sub_31ECC0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  swift_beginAccess();
  v3 = *(v2 + 3);
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title + 8];
  swift_beginAccess();

  sub_31EE6C(v4, v5);
  swift_endAccess();

  LOBYTE(v5) = sub_12C928(v6, v3, v7);

  if ((v5 & 1) == 0)
  {
    v8 = *(v2 + 3);
    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

    TextStackView.removeAll()();
    if (v8 >> 62)
    {
      v11 = sub_ABB060();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (v11)
      {
LABEL_4:
        if (v11 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v11; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = sub_36003C(i, v8, v10);
          }

          else
          {
            v13 = *(v8 + 8 * i + 32);
          }

          TextStackView.add(_:)(v13);
        }
      }
    }

    [v1 setNeedsLayout];
  }
}

void sub_31EE6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (!a2)
  {
    goto LABEL_7;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      v8 = v2[1];

      sub_3201F8(&qword_DE6C98, &qword_E718D8, &v33);
      swift_beginAccess();
      v10 = v8[3];
      v9 = v8[4];
      v11 = v8[6];
      v31 = v8[5];
      v32 = v11;
      v30 = v9;
      v28 = v8[2];
      v29 = v10;
      v12 = v37;
      v8[5] = v36;
      v8[6] = v12;
      v13 = v34;
      v8[2] = v33;
      v8[3] = v13;
      v8[4] = v35;
      sub_2F118(&v33, v27);
      sub_2F174(&v28);
      sub_2EB2A8();
      sub_2F174(&v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_AF7C50;
      v15 = v3[2];
      *(v14 + 32) = v8;
      *(v14 + 40) = v15;

      v3[3] = v14;
    }

    else
    {
    }

    v24 = v3[1];
    swift_beginAccess();
    *(v24 + 112) = a1;
  }

  else
  {
LABEL_7:
    v16 = *v2;
    *v2 = 1;
    if ((v16 & 1) == 0)
    {
      v17 = v2[1];
      sub_3201F8(&qword_DE6C88, &qword_E718C8, &v33);
      swift_beginAccess();
      v19 = v17[3];
      v18 = v17[4];
      v20 = v17[6];
      v31 = v17[5];
      v32 = v20;
      v30 = v18;
      v28 = v17[2];
      v29 = v19;
      v21 = v37;
      v17[5] = v36;
      v17[6] = v21;
      v22 = v34;
      v17[2] = v33;
      v17[3] = v22;
      v17[4] = v35;
      sub_2F118(&v33, v27);
      sub_2F174(&v28);
      sub_2EB2A8();
      sub_2F174(&v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_AF82B0;
      *(v23 + 32) = v17;

      v3[3] = v23;
    }

    v24 = v3[1];
    sub_AB91E0();
    sub_AB3550();
    v25 = sub_AB9320();
    a2 = v26;
    swift_beginAccess();
    *(v24 + 112) = v25;
  }

  *(v24 + 120) = a2;

  sub_2EB704();
}

double sub_31F284(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle + 8);
  *v4 = a1;
  v4[1] = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v10 = v2 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents;
    swift_beginAccess();
    v11 = *(v10 + 16);
    swift_beginAccess();
    *(v11 + 112) = a1;
    *(v11 + 120) = a2;

    sub_2EB704();
  }

  return result;
}

uint64_t sub_31F484(uint64_t result, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText + 8];
  if (!a2)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_13:

    return [v2 setNeedsLayout];
  }

  if (*&v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText] != result || v3 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
LABEL_10:

      if ([v2 accessoryType] != &dword_0 + 1)
      {
        v5 = sub_31FA74();
        v6 = sub_AB9260();
        [v5 setTitle:v6 forState:0];

        v7 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView;
        [*&v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView] sizeToFit];
        [v2 setAccessoryView:*&v2[v7]];
      }

      goto LABEL_13;
    }
  }

  return result;
}

void sub_31F628(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu);
  if (a1)
  {
    if (v4)
    {
      v5 = a1;
      sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
      v6 = v4;
      v7 = v5;
      LOBYTE(v5) = sub_ABA790();

      if (v5)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  v9 = sub_31FA74();
  v8 = *(v2 + v3);
  [v9 setMenu:v8];
}

void sub_31F720(uint64_t a1)
{
  v2 = v1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for UserDetailsCell(0);
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", a1);
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents];
  swift_beginAccess();
  v5 = *(v4 + 1);
  v6 = objc_opt_self();

  v7 = [v6 defaultMetrics];
  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = sub_ABA310();
  sub_AB9F00();
  v12 = v11;

  swift_beginAccess();
  *(v5 + 96) = v12;
  sub_2EB2A8();

  v13 = *(v4 + 1);

  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  v16 = sub_ABA310();
  LOBYTE(v5) = sub_ABA330();

  if (v5)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  swift_beginAccess();
  *(v13 + 88) = v17;
  sub_2EB2A8();
}

id sub_31FA74()
{
  v1 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView);
  }

  else
  {
    v4 = [objc_opt_self() buttonWithType:0];
    [v4 setContentMode:8];
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    v6 = [v4 titleLabel];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v7 setFont:v8];
    }

    v9 = UIColor.MusicTint.normal.unsafeMutableAddressor();
    [v4 setTitleColor:*v9 forState:0];
    [v4 setTitleColor:*UIColor.MusicTint.pressed.unsafeMutableAddressor() forState:5];
    [v4 setTintColor:*v9];
    [v4 setShowsMenuAsPrimaryAction:1];
    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_31FC20()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView);
}

id sub_31FCD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDetailsCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UserDetailsCell(uint64_t a1)
{
  result = qword_DFEC58;
  if (!qword_DFEC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_31FE8C(void *a1, double a2)
{
  sub_31FF10();
  sub_2F48A4(v4, a1, 0, 0);

  return a2;
}

uint64_t sub_31FF10()
{
  sub_3201F8(&qword_DE6C98, &qword_E718D8, v10);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v0 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v10);
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);

  v1 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v2 = qword_E718C8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v11[0] = v2;
  *(&v11[0] + 1) = v5;
  v11[1] = xmmword_AF7C20;
  v12 = 0;
  v13 = 0;
  v14 = v1;
  v15 = 1;
  v16 = xmmword_AF7C30;
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF7C50;
  *(v7 + 32) = v0;
  *(v7 + 40) = v6;
  v17[0] = v2;
  v17[1] = v5;
  v18 = xmmword_AF7C20;
  v19 = 0;
  v20 = 0;
  v21 = v1;
  v22 = 1;
  v23 = xmmword_AF7C30;
  sub_2F118(v11, v9);

  sub_2F174(v17);
  return 0;
}

void sub_32012C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu) = 0;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_textComponents;
  *v4 = sub_31FF10() & 1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15UserDetailsCell____lazy_storage___accessorybuttonView) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_3201F8@<D0>(void *a1@<X0>, void **a2@<X1>, uint64_t a4@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v7 = sub_ABA560();
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  *a4 = v8;
  *(a4 + 8) = v11;
  *(a4 + 16) = xmmword_AF7C20;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = v7;
  *(a4 + 56) = 1;
  result = 20.0;
  *(a4 + 64) = xmmword_AF7C30;
  return result;
}

unint64_t sub_3202EC()
{
  result = qword_DFEC68;
  if (!qword_DFEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFEC68);
  }

  return result;
}

id sub_3203F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MusicKitEditingModelResponse();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_320460()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E714D0);
  __swift_project_value_buffer(v0, qword_E714D0);
  return static Logger.music(_:)(0xD000000000000019, 0x8000000000B5EDD0);
}

unint64_t ShelfCollectionViewLayout.SupplementaryViewKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

MusicApplication::ShelfCollectionViewLayout::SupplementaryViewKind_optional __swiftcall ShelfCollectionViewLayout.SupplementaryViewKind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_CEFD98;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicApplication_ShelfCollectionViewLayout_SupplementaryViewKind_scrollingHeader;
  }

  else
  {
    v4.value = MusicApplication_ShelfCollectionViewLayout_SupplementaryViewKind_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_320550(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000002ELL;
  }

  else
  {
    v3 = 0xD000000000000026;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "ryViewKindGlobalHeader";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000002ELL;
  }

  else
  {
    v6 = 0xD000000000000026;
  }

  if (*a2)
  {
    v7 = "ryViewKindGlobalHeader";
  }

  else
  {
    v7 = "";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

Swift::Int sub_3205FC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_32067C(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_3206E8(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_320764(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CEFD98;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_3207C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000002ELL;
  }

  else
  {
    v2 = 0xD000000000000026;
  }

  if (*v1)
  {
    v3 = "ryViewKindGlobalHeader";
  }

  else
  {
    v3 = "";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t ShelfCollectionViewLayout.scrollStyle.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void ShelfCollectionViewLayout.scrollStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  if (v4 != (a1 & 1))
  {
    sub_32533C();
  }
}

void (*ShelfCollectionViewLayout.scrollStyle.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_320940;
}

void sub_320940(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (v5 != v6)
  {
    sub_32533C();
  }

  free(v2);
}

double ShelfCollectionViewLayout.interSectionHorizontalOffset.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShelfCollectionViewLayout.interSectionHorizontalOffset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  *&v1[v3] = a1;
  v4 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
  result = sub_AB38D0();
  if (result)
  {
    *&v1[v4] = *&v1[v3];
    return [v1 invalidateLayout];
  }

  return result;
}

uint64_t (*ShelfCollectionViewLayout.interSectionHorizontalOffset.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_320B28;
}

void sub_320B28(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v4 = v3[5];
    v6 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
    *v3 = *(v5 + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset);
    v3[3] = *(v5 + v4);
    if (sub_AB38D0())
    {
      v7 = v3[4];
      *(v5 + v6) = *&v7[v3[5]];
      [v7 invalidateLayout];
    }
  }

  free(v3);
}

CGFloat sub_320BCC()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return UIEdgeInsetsZero.top;
  }

  v2 = v1;
  [v1 music_inheritedLayoutInsets];
  v4 = v3;
  if ([v2 delegate])
  {
    ObjectType = swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      v7 = (*(v6 + 64))(v2, v0, ObjectType, v6);
      swift_unknownObjectRelease();

      return v4 + v7;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  return v4;
}

_BYTE *ShelfCollectionViewLayout.invalidationContext(forBoundsChange:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
  if (swift_dynamicCastMetatype())
  {
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    type metadata accessor for ShelfCollectionViewLayout.InvalidationContext();
    v13 = swift_dynamicCastClassUnconditional();
    v14 = [v4 collectionView];
    if (v14)
    {
      v15 = v14;
      [(objc_class *)v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      Width = CGRectGetWidth(v41);
      v42.origin.x = v17;
      v42.origin.y = v19;
      v42.size.width = v21;
      v42.size.height = v23;
      v39 = CGRectGetWidth(v42);
      sub_7FD28();
      if (sub_AB38E0())
      {
        v13[OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayoutP33_8F3A1CCF37430C45DA7B42CF7C548BFA19InvalidationContext_invalidateItemLayoutMetrics] = 0;
        v36[1] = "";
        v37 = v13;

        v38 = v4;
        v24 = *(*&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames] + 16);
        if (v24)
        {
          v25 = 0;
          v26 = _swiftEmptyArrayStorage;
          do
          {
            sub_AB3810();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_6AE4C(0, v26[2] + 1, 1, v26);
            }

            v28 = v26[2];
            v27 = v26[3];
            if (v28 >= v27 >> 1)
            {
              v26 = sub_6AE4C((v27 > 1), v28 + 1, 1, v26);
            }

            ++v25;
            v26[2] = v28 + 1;
            (*(v10 + 32))(v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v12, v9);
          }

          while (v24 != v25);
        }

        else
        {
          v26 = _swiftEmptyArrayStorage;
        }

        if (v26[2])
        {
          v29 = sub_AB9260();
          isa = sub_AB9740().super.isa;

          v13 = v37;
          [v37 invalidateSupplementaryElementsOfKind:v29 atIndexPaths:isa];
        }

        else
        {

          v13 = v37;
        }

        v31 = v38;
        sub_321240(v38, v13, v17, v19, v21, v23);
        sub_321240(v31, v13, a1, a2, a3, a4);
        v32 = sub_AB9260();
        v33 = [(objc_class *)v15 indexPathsForVisibleSupplementaryElementsOfKind:v32];

        if (!v33)
        {
          sub_AB9760();
          v33 = sub_AB9740().super.isa;
        }

        v34 = sub_AB9260();
        [v13 invalidateSupplementaryElementsOfKind:v34 atIndexPaths:v33];

        v15 = v33;
      }
    }

    return v13;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

double sub_321240(char *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v15 = _swiftEmptyArrayStorage;
  sub_3246F4(a1, &v15, a3, a4, a5, a6);
  if (v15[2])
  {
    v12 = sub_AB9260();
    sub_AB3820();
    isa = sub_AB9740().super.isa;
    [a2 invalidateSupplementaryElementsOfKind:v12 atIndexPaths:isa];
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall ShelfCollectionViewLayout.invalidateLayout(with:)(UICollectionViewLayoutInvalidationContext with)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ShelfCollectionViewLayout(0);
  objc_msgSendSuper2(&v8, "invalidateLayoutWithContext:", with.super.isa);
  if (([(objc_class *)with.super.isa invalidateEverything]& 1) != 0 || ([(objc_class *)with.super.isa invalidateDataSourceCounts]& 1) != 0 || (v3 = [(objc_class *)with.super.isa invalidatedItemIndexPaths]) != 0 && (v4 = v3, sub_AB3820(), v5 = sub_AB9760(), v4, v6 = *(v5 + 16), , v6))
  {
    *(v1 + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics) = 0;
  }

  type metadata accessor for ShelfCollectionViewLayout.InvalidationContext();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    if (*(v7 + OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayoutP33_8F3A1CCF37430C45DA7B42CF7C548BFA19InvalidationContext_invalidateItemLayoutMetrics) == 1)
    {
      *(v1 + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics) = 0;
    }
  }
}

void *ShelfCollectionViewLayout.layoutAttributesForElements(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11 = _swiftEmptyArrayStorage;
  v9 = v4;
  sub_335730(v9, v9, &v11, a1, a2, a3, a4);
  sub_335F5C(v9, v9, &v11, a1, a2, a3, a4);
  sub_336220(v9, v9, &v11, a1, a2, a3, a4);

  return v11;
}

char *ShelfCollectionViewLayout.layoutAttributesForItem(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_itemIndexPathRelativeFrameMap;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2EC048(a1);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = *(v5 + 56) + 32 * v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);

  MaxY = sub_320BCC();
  v15 = v9 + v14;
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames];
  v17 = *(v16 + 16);
  if (v17)
  {
    v38.origin.x = sub_3250E8(*(v16 + 32 * v17));
    MaxY = CGRectGetMaxY(v38);
  }

  v18 = v10 + MaxY + *&v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight];
  type metadata accessor for ShelfCollectionViewLayout.LayoutAttributes();
  isa = sub_AB3770().super.isa;
  v20 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:isa];

  v21 = v20;
  [v21 setFrame:{v15, v18, v11, v12}];
  v22 = [v2 collectionView];
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  if (![v22 delegate])
  {

LABEL_28:
    return v21;
  }

  ObjectType = swift_getObjectType();
  v25 = swift_conformsToProtocol2();
  if (!v25)
  {

    swift_unknownObjectRelease();
    return v21;
  }

  v26 = &v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_cachedShelfGridMetrics];
  if (v2[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_cachedShelfGridMetrics + 32] == 1)
  {
    v27 = v25;
    v28 = sub_AB37F0();
    v29 = (*(v27 + 24))(v23, v2, v28, ObjectType, v27);
    *v26 = v29;
    *(v26 + 1) = v30;
    *(v26 + 2) = v31;
    *(v26 + 3) = v32;
    v26[32] = 0;
  }

  else
  {
    v29 = *v26;
  }

  v33 = [v23 numberOfItemsInSection:sub_AB37F0()];
  v34 = v33;
  if (v33 < v29)
  {
    v29 = v33;
  }

  result = sub_AB37E0();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (!v29)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (result == 0x7FFFFFFFFFFFFFFFLL && v29 == -1)
  {
    goto LABEL_32;
  }

  v36 = (result + 1) % v29;
  if (v36 != 1)
  {
    goto LABEL_25;
  }

  result = sub_AB37E0();
  if (!__OFADD__(result, 1))
  {
    if (result + 1 == v34)
    {
      v37 = 3;
LABEL_27:
      *(v21 + OBJC_IVAR____TtCC16MusicApplication25ShelfCollectionViewLayout16LayoutAttributes_rowPosition) = v37;

      swift_unknownObjectRelease();
      goto LABEL_28;
    }

LABEL_25:
    v37 = v36 != 1;
    if (!v36)
    {
      v37 = 2;
    }

    goto LABEL_27;
  }

LABEL_33:
  __break(1u);
  return result;
}

id ShelfCollectionViewLayout.layoutAttributesForSupplementaryView(ofKind:at:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  [swift_getObjCClassFromMetadata() layoutAttributesClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &qword_E04510, UICollectionViewLayoutAttributes_ptr);
  if (swift_dynamicCastMetatype())
  {
    v8 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v10 = [swift_getObjCClassFromMetadata() layoutAttributesForSupplementaryViewOfKind:v8 withIndexPath:isa];

    v11._rawValue = &off_CEFD98;
    v54._countAndFlagsBits = a1;
    v54._object = a2;
    v12 = sub_ABB140(v11, v54);

    if (v12 == 1)
    {
      v32 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollingHeaderIndexPathMetricsMap;
      swift_beginAccess();
      v33 = *&v4[v32];
      if (*(v33 + 16))
      {

        v34 = sub_2EC048(a3);
        if (v35)
        {
          v36 = (*(v33 + 56) + 48 * v34);
          v37 = v36[1];
          v53[0] = *v36;
          v53[1] = v37;
          v53[2] = v36[2];

          v38 = [v4 collectionView];
          if (v38)
          {
            v39 = v38;
            [v38 bounds];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;
          }

          else
          {
            v41 = 0.0;
            v43 = 0.0;
            v45 = 0.0;
            v47 = 0.0;
          }

          v48 = sub_325230(v53, v41, v43, v45, v47);
          [v10 setFrame:{v48, v49, v50, v51}];
        }

        else
        {
        }
      }

      return v10;
    }

    if (v12)
    {
      return v10;
    }

    v13 = IndexPath.safeSection.getter();
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = *&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames];
      if (v13 < *(v14 + 16))
      {
        v15 = sub_3250E8(*(v14 + 32 * v13 + 32));
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [v4 collectionView];
        if (v22)
        {
          v23 = v22;
          [v22 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
        }

        else
        {
          v25 = 0.0;
          v27 = 0.0;
          v29 = 0.0;
          v31 = 0.0;
        }

        v55.origin.x = v25;
        v55.origin.y = v27;
        v55.size.width = v29;
        v55.size.height = v31;
        [v10 setFrame:{v15 + CGRectGetMinX(v55), v17, v19, v21}];
        return v10;
      }
    }

    __break(1u);
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ShelfCollectionViewLayout.prepare()()
{
  v1 = v0;
  v2 = sub_AB3820();
  v246 = *(v2 - 8);
  __chkstk_darwin();
  v261 = &v206 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v237 = &v206 - v4;
  __chkstk_darwin();
  v260 = &v206 - v5;
  *&v6 = __chkstk_darwin().n128_u64[0];
  v235 = &v206 - v7;
  v8 = &selRef_setSubtitleText_;
  if (v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics])
  {
    goto LABEL_2;
  }

  v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_hasValidItemLayoutMetrics] = 1;
  v12 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_itemIndexPathRelativeFrameMap;
  swift_beginAccess();
  v258 = v12;
  *&v0[v12] = _swiftEmptyDictionarySingleton;

  v228 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects;
  *&v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects] = _swiftEmptyArrayStorage;

  v13 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollingHeaderIndexPathMetricsMap;
  swift_beginAccess();
  *&v0[v13] = _swiftEmptyDictionarySingleton;

  v14 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames;
  *&v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_globalHeaderStartingRelativeFrames] = _swiftEmptyArrayStorage;

  v15 = &v0[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_cachedShelfGridMetrics];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = [v0 collectionView];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 delegate];
    if (!v18)
    {

      return;
    }

    v19 = v18;
    swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v254 = v21;
    if (!v20)
    {

      swift_unknownObjectRelease();
      return;
    }

    v22 = v20;
    v23 = sub_320BCC();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v17 bounds];
    v223 = v30;
    v222 = v31;
    v221 = v32;
    v220 = v33;
    v34 = [v17 numberOfSections];
    ObjectType = swift_getObjectType();
    v36 = *(v22 + 32);
    v253 = ObjectType;
    v255 = v22;
    v37 = v36(v17);
    if (v37 < 0)
    {
      goto LABEL_158;
    }

    v38 = v37;
    v219 = v34;
    v256 = v13;
    v211 = v19;
    v252 = v17;
    if (v37)
    {
      v39 = 0;
      v40 = *(v255 + 40);
      v41 = 0.0;
      v229 = 0.0;
      MaxY = 0.0;
      do
      {
        v43 = v40(v17, v1, v39, v253, v255);
        v45 = v44;
        v46 = *&v1[v14];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v1[v14] = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = sub_6C31C(0, *(v46 + 2) + 1, 1, v46);
          *&v1[v14] = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_6C31C((v48 > 1), v49 + 1, 1, v46);
        }

        ++v39;
        *(v46 + 2) = v49 + 1;
        v50 = &v46[32 * v49];
        *(v50 + 4) = 0;
        *(v50 + 5) = MaxY;
        *(v50 + 6) = v43;
        *(v50 + 7) = v45;
        *&v1[v14] = v46;
        v51 = v229;
        if (v229 <= v43)
        {
          v51 = v43;
        }

        v229 = v51;
        v41 = v41 + v45;
        v266.origin.x = 0.0;
        v266.origin.y = MaxY;
        v266.size.width = v43;
        v266.size.height = v45;
        MaxY = CGRectGetMaxY(v266);
        v17 = v252;
      }

      while (v38 != v39);
    }

    else
    {
      v41 = 0.0;
      v229 = 0.0;
    }

    v52 = sub_994C0(_swiftEmptyArrayStorage);
    v8 = &selRef_setSubtitleText_;
    if ((v219 & 0x8000000000000000) != 0)
    {
LABEL_159:
      __break(1u);
LABEL_160:
      sub_ABB4C0();
      __break(1u);
LABEL_161:
      sub_ABB4C0();
      __break(1u);
LABEL_162:
      sub_ABB4C0();
      __break(1u);
      return;
    }

    v207 = v29;
    v208 = v25;
    v209 = v27;
    v210 = v23;
    horizontal = UIOffsetZero.horizontal;
    v53 = v256;
    if (!v219)
    {

      *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight] = 0;
      v58 = 0.0;
      v56 = 0.0;
      goto LABEL_141;
    }

    v227 = v52;
    v54 = v255 + 24;
    v217 = *(v255 + 24);
    vertical = UIOffsetZero.vertical;
    v215 = *(v255 + 16);
    v216 = v255 + 16;
    v214 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
    swift_beginAccess();
    v55 = 0;
    v230 = v54 - 16;
    v262 = (v246 + 16);
    v257 = (v246 + 8);
    v213 = v54 + 24;
    v218 = v54;
    v241 = (v54 + 32);
    v56 = 0.0;
    v57 = 0.0;
    v58 = 0.0;
    v240 = 1;
    v59 = v235;
    v263 = v2;
    v212 = v41;
    v244 = v1;
    while (1)
    {
      v248 = [v17 numberOfItemsInSection:v55];
      v61 = v253;
      v62 = v255;
      *&v250 = COERCE_DOUBLE(v217(v17, v1, v55, v253, v255));
      v247 = v63;
      v236 = v64;
      v234 = v65;
      v66 = v215(v17, v1, v55, v61, v62);
      if (v68)
      {
        v69 = v227;
        goto LABEL_45;
      }

      v70 = v66;
      v259 = v67;
      v71 = v227;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v265 = v71;
      v73 = sub_2F5A90(v55);
      v75 = v71[2];
      v76 = (v74 & 1) == 0;
      v77 = __OFADD__(v75, v76);
      v78 = v75 + v76;
      if (v77)
      {
        goto LABEL_155;
      }

      v79 = v74;
      if (v71[3] < v78)
      {
        break;
      }

      if (v72)
      {
        goto LABEL_40;
      }

      v83 = v73;
      sub_3341C0();
      v73 = v83;
      v69 = v265;
      if (v79)
      {
LABEL_41:
        v81 = (v69[7] + 16 * v73);
        v82 = v259;
        *v81 = v70;
        v81[1] = v82;
        goto LABEL_45;
      }

LABEL_43:
      v69[(v73 >> 6) + 8] |= 1 << v73;
      *(v69[6] + 8 * v73) = v55;
      v84 = (v69[7] + 16 * v73);
      v85 = v259;
      *v84 = v70;
      v84[1] = v85;
      v86 = v69[2];
      v77 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v77)
      {
        goto LABEL_157;
      }

      v69[2] = v87;
LABEL_45:
      v88 = v237;
      v89 = v248;
      v90 = v69[2];
      v91 = 0.0;
      v245 = 0.0;
      if (v90)
      {
        v92 = sub_2F5A90(v55);
        if (v93)
        {
          v243 = 0;
          v94 = (v69[7] + 16 * v92);
          v91 = v94[1];
          v245 = *v94;
        }

        else
        {
          v243 = 1;
          v91 = 0.0;
        }
      }

      else
      {
        v243 = 1;
      }

      v242 = v91;
      if (v89 < 0)
      {
        goto LABEL_152;
      }

      v259 = v55;
      v227 = v69;
      v226 = v58;
      if (v89)
      {
        v95 = 0;
        v225 = 0;
        v96 = v250;
        if (v89 < v250)
        {
          v96 = v89;
        }

        v239 = v96 - 1;
        v97 = __OFSUB__(v96, 1);
        v240 = v97;
        v231 = v247 - 1;
        v98 = __OFSUB__(v247, 1);
        v232 = v98;
        *&v250 = 0.0;
        v99 = horizontal;
        v224 = 0.0;
LABEL_61:
        v238 = 0;
        v100 = 0;
        v101 = vertical;
        v102 = v99;
        v103 = 0.0;
        v104 = 0.0;
        v233 = v99;
        while (1)
        {
          if (v95 >= v89)
          {
            goto LABEL_145;
          }

          v106 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_146;
          }

          sub_AB37C0();
          v107 = v245;
          v108 = v242;
          if (v243)
          {
            v107 = (*(v255 + 8))(v252, v1, v59, v253);
            v108 = v109;
          }

          v110 = v59;
          v111 = *v262;
          v112 = v260;
          v113 = v110;
          (*v262)(v260);
          v114 = v258;
          swift_beginAccess();
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v264 = *&v1[v114];
          v116 = v264;
          *&v1[v114] = 0x8000000000000000;
          v117 = sub_2EC048(v112);
          v119 = v116[2];
          v120 = (v118 & 1) == 0;
          v77 = __OFADD__(v119, v120);
          v121 = v119 + v120;
          if (v77)
          {
            goto LABEL_147;
          }

          v122 = v118;
          if (v116[3] < v121)
          {
            break;
          }

          v55 = v259;
          if (v115)
          {
            goto LABEL_75;
          }

          v127 = v117;
          sub_333F40();
          v117 = v127;
          v124 = v264;
          if ((v122 & 1) == 0)
          {
LABEL_78:
            v124[(v117 >> 6) + 8] |= 1 << v117;
            v128 = v246;
            v129 = v117;
            v130 = v260;
            v131 = v263;
            (v111)(v124[6] + *(v246 + 72) * v117, v260, v263);
            v132 = v124[7] + 32 * v129;
            *v132 = v102;
            *(v132 + 8) = v101;
            *(v132 + 16) = v107;
            *(v132 + 24) = v108;
            v126 = *(v128 + 8);
            v126(v130, v131);
            v133 = v124[2];
            v77 = __OFADD__(v133, 1);
            v134 = v133 + 1;
            if (v77)
            {
              goto LABEL_150;
            }

            v124[2] = v134;
            v59 = v235;
            v55 = v259;
            goto LABEL_80;
          }

LABEL_76:
          v125 = v124[7] + 32 * v117;
          *v125 = v102;
          *(v125 + 8) = v101;
          *(v125 + 16) = v107;
          *(v125 + 24) = v108;
          v126 = *v257;
          (*v257)(v260, v263);
          v59 = v113;
LABEL_80:
          *&v1[v258] = v124;

          swift_endAccess();
          v268.origin.x = v102;
          v268.origin.y = v101;
          v268.size.width = v107;
          v268.size.height = v108;
          v135 = CGRectGetMaxX(v268) - v99;
          if (v135 > v104)
          {
            v104 = v135;
          }

          if (v247 == 1)
          {
            v269.origin.x = v102;
            v269.origin.y = v101;
            v269.size.width = v107;
            v269.size.height = v108;
            Height = CGRectGetHeight(v269);
            if (v103 <= Height)
            {
              v103 = Height;
            }
          }

          v137 = v263;
          v270.origin.x = v102;
          v270.origin.y = v101;
          v270.size.width = v107;
          v270.size.height = v108;
          v138 = CGRectGetMaxY(v270) - vertical;
          if (v138 > v56)
          {
            v56 = v138;
          }

          if (v240)
          {
            goto LABEL_148;
          }

          if (v100 < v239)
          {
            ++v100;
            v267.origin.x = v102;
            v267.origin.y = v101;
            v267.size.width = v107;
            v267.size.height = v108;
            v105 = CGRectGetHeight(v267);
            v126(v59, v137);
            if (v103 <= v105)
            {
              v103 = v105;
            }

            v101 = v101 + v234 + v103;
          }

          else
          {
            if (v232)
            {
              goto LABEL_151;
            }

            if (v238 >= v231)
            {
              v141 = v225 + 1;
              if (__OFADD__(v225, 1))
              {
                goto LABEL_156;
              }

              v142 = v224;
              ++v225;
              v143 = *&v250;
              if (v141 > 1)
              {
                v143 = v224 + v236 + v104;
              }

              *&v250 = v143;
              if (v141 > 1)
              {
                v142 = v224 + v236 + v104;
              }

              v144 = v99;
              v145 = v99 + v104;
              v146 = v145 - v144;
              if (v146 > 0.0)
              {
                v147 = v146;
              }

              else
              {
                v147 = 0.0;
              }

              v273.origin.x = v223;
              v273.origin.y = v222;
              v273.size.width = v221;
              v273.size.height = v220;
              v148 = CGRectGetHeight(v273);
              v149 = v228;
              v150 = *&v1[v228];
              v151 = swift_isUniquelyReferenced_nonNull_native();
              *&v1[v149] = v150;
              v17 = v252;
              v41 = v212;
              v88 = v237;
              v152 = v59;
              if ((v151 & 1) == 0)
              {
                v150 = sub_6C31C(0, *(v150 + 2) + 1, 1, v150);
                *&v1[v228] = v150;
              }

              v154 = *(v150 + 2);
              v153 = *(v150 + 3);
              if (v154 >= v153 >> 1)
              {
                v150 = sub_6C31C((v153 > 1), v154 + 1, 1, v150);
              }

              *(v150 + 2) = v154 + 1;
              v155 = &v150[32 * v154];
              *(v155 + 4) = v233;
              *(v155 + 5) = 0;
              *(v155 + 6) = v147;
              *(v155 + 7) = v148;
              *&v1[v228] = v150;
              v59 = v152;
              v126(v152, v263);
              v89 = v248;
              if (v106 != v248)
              {
                v224 = v142;
                v99 = v145 + v236;
                v95 = v106;
                goto LABEL_61;
              }

              v240 = 0;
              v57 = v236;
              v53 = v256;
              v170 = v255;
              goto LABEL_122;
            }

            ++v238;
            v271.origin.x = v102;
            v271.origin.y = v101;
            v271.size.width = v107;
            v271.size.height = v108;
            v139 = v102 + v236 + CGRectGetWidth(v271);
            v272.origin.x = v102;
            v272.origin.y = v101;
            v272.size.width = v107;
            v272.size.height = v108;
            v140 = CGRectGetHeight(v272);
            v126(v59, v137);
            v100 = 0;
            if (v103 <= v140)
            {
              v103 = v140;
            }

            v101 = vertical;
            v102 = v139;
            v99 = v233;
          }

          ++v95;
          v89 = v248;
          v53 = v256;
          if (v106 == v248)
          {
            v240 = 0;
            v57 = v236;
            v17 = v252;
            v41 = v212;
            v88 = v237;
            v156 = v224;
            v157 = v225 + 1;
            if (__OFADD__(v225, 1))
            {
              goto LABEL_154;
            }

            goto LABEL_112;
          }
        }

        sub_32DB14(v121, v115);
        v117 = sub_2EC048(v260);
        v55 = v259;
        if ((v122 & 1) != (v123 & 1))
        {
          goto LABEL_161;
        }

LABEL_75:
        v124 = v264;
        if ((v122 & 1) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_76;
      }

      *&v250 = 0.0;
      v156 = 0.0;
      v104 = 0.0;
      v99 = horizontal;
      v157 = 1;
LABEL_112:
      v158 = v156 + v236 + v104;
      v159 = v250;
      if (v157 > 1)
      {
        *&v159 = v158;
      }

      v250 = v159;
      v160 = v99;
      v145 = v104 + v99;
      v161 = v160;
      v162 = v145 - v160;
      if (v162 > 0.0)
      {
        v163 = v162;
      }

      else
      {
        v163 = 0.0;
      }

      v274.origin.x = v223;
      v274.origin.y = v222;
      v274.size.width = v221;
      v274.size.height = v220;
      v164 = CGRectGetHeight(v274);
      v165 = v228;
      v166 = *&v1[v228];
      v167 = swift_isUniquelyReferenced_nonNull_native();
      *&v1[v165] = v166;
      if ((v167 & 1) == 0)
      {
        v166 = sub_6C31C(0, *(v166 + 2) + 1, 1, v166);
        *&v1[v228] = v166;
      }

      v169 = *(v166 + 2);
      v168 = *(v166 + 3);
      v170 = v255;
      if (v169 >= v168 >> 1)
      {
        v202 = sub_6C31C((v168 > 1), v169 + 1, 1, v166);
        v170 = v255;
        v166 = v202;
      }

      *(v166 + 2) = v169 + 1;
      v171 = &v166[32 * v169];
      *(v171 + 4) = v161;
      *(v171 + 5) = 0;
      *(v171 + 6) = v163;
      *(v171 + 7) = v164;
      *&v1[v228] = v166;
LABEL_122:
      v172 = *&v1[v214];
      v173 = (*(v170 + 48))(v17, v1, v55, v253);
      if (v173 < 0)
      {
        goto LABEL_153;
      }

      v174 = v263;
      if (v173)
      {
        v175 = 0;
        v248 = *v241;
        v60 = 0.0;
        v1 = v244;
        v247 = v173;
        while (1)
        {
          sub_AB37C0();
          v179 = (v248)(v252, v1, v88, v253, v255);
          v181 = v180;
          v182 = *v262;
          v183 = v261;
          (*v262)(v261, v88, v174);
          swift_beginAccess();
          v184 = swift_isUniquelyReferenced_nonNull_native();
          v264 = *&v1[v53];
          v185 = v264;
          *&v1[v53] = 0x8000000000000000;
          v187 = sub_2EC048(v183);
          v188 = v185[2];
          v189 = (v186 & 1) == 0;
          v190 = v188 + v189;
          if (__OFADD__(v188, v189))
          {
            break;
          }

          v191 = v186;
          if (v185[3] >= v190)
          {
            if ((v184 & 1) == 0)
            {
              sub_333CA8();
            }
          }

          else
          {
            sub_32D71C(v190, v184);
            v192 = sub_2EC048(v261);
            if ((v191 & 1) != (v193 & 1))
            {
              goto LABEL_160;
            }

            v187 = v192;
          }

          v194 = v264;
          v195 = v257;
          if (v191)
          {
            v176 = v264[7] + 48 * v187;
            *v176 = horizontal;
            *(v176 + 8) = v60;
            *(v176 + 16) = *&v250;
            *(v176 + 24) = 0;
            *(v176 + 32) = v179;
            *(v176 + 40) = v181;
            v177 = *v195;
            v178 = v263;
            (*v195)(v261, v263);
          }

          else
          {
            v264[(v187 >> 6) + 8] |= 1 << v187;
            v196 = v246;
            v197 = v261;
            v198 = v263;
            (v182)(v194[6] + *(v246 + 72) * v187, v261, v263);
            v199 = v194[7] + 48 * v187;
            *v199 = horizontal;
            *(v199 + 8) = v60;
            *(v199 + 16) = *&v250;
            *(v199 + 24) = 0;
            *(v199 + 32) = v179;
            *(v199 + 40) = v181;
            v177 = *(v196 + 8);
            v177(v197, v198);
            v200 = v194[2];
            v77 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v77)
            {
              goto LABEL_149;
            }

            v194[2] = v201;
            v88 = v237;
            v55 = v259;
            v178 = v263;
          }

          ++v175;
          v53 = v256;
          v1 = v244;
          *&v244[v256] = v194;

          swift_endAccess();
          v177(v88, v178);
          v60 = v60 + v181;
          v174 = v178;
          if (v247 == v175)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v60 = 0.0;
      v1 = v244;
LABEL_30:
      ++v55;
      horizontal = v145 + v172;
      v58 = v226;
      if (v226 <= v60)
      {
        v58 = v60;
      }

      v17 = v252;
      v59 = v235;
      if (v55 == v219)
      {

        *&v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_maximumScrollingHeaderHeight] = v58;
        if ((v240 & 1) == 0)
        {
          horizontal = horizontal - v57;
        }

        v8 = &selRef_setSubtitleText_;
LABEL_141:
        v203 = v229;
        if (horizontal > v229)
        {
          v203 = horizontal;
        }

        v204 = v210 + v209 + v41 + v58 + v56;
        v205 = &v1[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_contentSize];
        *v205 = v208 + v207 + v203;
        v205[1] = v204;
        swift_unknownObjectRelease();

LABEL_2:
        v9 = [v1 v8[199]];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 panGestureRecognizer];
          [v11 removeTarget:v1 action:0];
          [v11 addTarget:v1 action:"panGestureRecognizerStateDidChange:"];
        }

        sub_32533C();
        return;
      }
    }

    sub_32DEF4(v78, v72);
    v73 = sub_2F5A90(v55);
    if ((v79 & 1) != (v80 & 1))
    {
      goto LABEL_162;
    }

LABEL_40:
    v69 = v265;
    if (v79)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }
}

void sub_3235B8(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v49 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v49 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = *(v5 + 56);
    v59 = v4;
    v53 = v16;
    v54 = v5 + 56;
    v16(v13, 1, 1, v4);
    v17 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
    swift_beginAccess();
    if (v2[v17] != 1)
    {
LABEL_21:

      sub_36B0C(v13, v10, &unk_DE8E20, &qword_AF7990);
      v48 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_startingIndexPath;
      swift_beginAccess();
      sub_57CF8(v10, &v2[v48]);
      swift_endAccess();
      return;
    }

    [a1 locationInView:v15];
    v19 = v18;
    v20 = [v15 visibleCells];
    sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
    v21 = sub_AB9760();

    v51 = v2;
    v52 = v13;
    v50 = v10;
    if (v21 >> 62)
    {
      v22 = sub_ABB060();
      if (v22)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (v22)
      {
LABEL_5:
        if (v22 < 1)
        {
          __break(1u);
          return;
        }

        v23 = 0;
        v58 = v21 & 0xC000000000000001;
        v24 = (v5 + 32);
        v55 = (v5 + 8);
        v57 = 1;
        v25 = 0.0;
        do
        {
          if (v58)
          {
            v26 = sub_360438(v23, v21);
          }

          else
          {
            v26 = *(v21 + 8 * v23 + 32);
          }

          v27 = v26;
          v28 = [v15 indexPathForCell:v26];
          if (v28)
          {
            v29 = v22;
            v30 = v8;
            v31 = v56;
            v32 = v28;
            sub_AB3790();

            v33 = *v24;
            v34 = v31;
            v35 = v59;
            (*v24)(v30, v34, v59);
            v36 = v27;
            v37 = [v36 superview];
            if (v37)
            {
              v38 = v37;
              [v36 center];
              v40 = v39;
              v42 = v41;

              [v38 convertPoint:v15 toCoordinateSpace:{v40, v42}];
              v44 = v43;

              v45 = vabdd_f64(v19, v44);
              if (v57 & 1 | (v45 < v25))
              {
                v46 = v52;
                sub_12E1C(v52, &unk_DE8E20, &qword_AF7990);
                v8 = v30;
                v47 = v59;
                v33(v46, v30, v59);
                v53(v46, 0, 1, v47);
                v57 = 0;
                v25 = v45;
              }

              else
              {
                v8 = v30;
                (*v55)(v30, v59);
                v57 = 0;
              }
            }

            else
            {

              (*v55)(v30, v35);
              v8 = v30;
            }

            v22 = v29;
          }

          else
          {
          }

          ++v23;
        }

        while (v22 != v23);
      }
    }

    v10 = v50;
    v2 = v51;
    v13 = v52;
    goto LABEL_21;
  }
}

id ShelfCollectionViewLayout.shouldInvalidateLayout(forBoundsChange:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  result = [v4 collectionView];
  if (result)
  {
    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    Width = CGRectGetWidth(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    if (Width != CGRectGetWidth(v22))
    {
      return &dword_0 + 1;
    }

    if (v12 != a1 || v14 != a2)
    {

      return &dword_0 + 1;
    }

    return 0;
  }

  return result;
}

CGFloat ShelfCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(CGFloat a1, double a2, long double a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v105 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 collectionView];
  if (!v16)
  {
    return a1;
  }

  v17 = v16;
  [v17 contentInset];
  v19 = v18;
  v20 = copysign(0.01, a3);
  v21 = log(UIScrollViewDecelerationRateNormal);
  [v17 contentOffset];
  v23 = v22;

  v115 = v19 + v23 - (a3 - v20) / v21;
  sub_320BCC();
  v25 = v24;
  v26 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (v4[v26] != 1)
  {
LABEL_10:
    v40 = *&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects];
    v41 = *(v40 + 2);
    if (v41)
    {
      v42 = v40[4];
      v43 = v40[5];
      v44 = v40[6];
      v45 = v40[7];

      v116.origin.x = v42;
      v116.origin.y = v43;
      v116.size.width = v44;
      v116.size.height = v45;
      MinX = CGRectGetMinX(v116);
      v117.origin.x = v42;
      v117.origin.y = v43;
      v117.size.width = v44;
      v117.size.height = v45;
      a1 = CGRectGetMinX(v117);
      v47 = v41 - 1;
      if (v41 != 1)
      {
        v48 = vabdd_f64(v25 + MinX, v115);
        v49 = v40 + 11;
        do
        {
          v50 = *(v49 - 3);
          v51 = *(v49 - 2);
          v52 = *(v49 - 1);
          v53 = *v49;
          v118.origin.x = v50;
          v118.origin.y = v51;
          v118.size.width = v52;
          v118.size.height = *v49;
          v54 = vabdd_f64(v25 + CGRectGetMinX(v118), v115);
          if (v54 < v48)
          {
            v119.origin.x = v50;
            v119.origin.y = v51;
            v119.size.width = v52;
            v119.size.height = v53;
            a1 = CGRectGetMinX(v119);
            v48 = v54;
          }

          v49 += 4;
          --v47;
        }

        while (v47);
      }

      v30 = v17;
      p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
    }

    else
    {
      v30 = v17;
    }

    goto LABEL_50;
  }

  v28 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_startingIndexPath;
  swift_beginAccess();
  sub_15F84(&v4[v28], v10, &unk_DE8E20, &qword_AF7990);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
    goto LABEL_10;
  }

  (*(v12 + 32))(v15, v10, v11);
  isa = sub_AB3770().super.isa;
  v30 = [v17 layoutAttributesForItemAtIndexPath:isa];

  if (!v30)
  {
    (*(v12 + 8))(v15, v11);
    goto LABEL_10;
  }

  [v30 center];
  v108 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects;
  v32 = *&v4[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_sectionPageRects];
  v33 = *(v32 + 16);
  if (!v33)
  {
    goto LABEL_49;
  }

  v34 = v31;
  v105 = v30;
  v106 = v15;
  v107 = v8;
  v111 = v32 + 32;

  v112 = 0;
  v35 = 0;
  v36 = 1;
  v30 = (1 - v33);
  v37 = 0uLL;
  v38 = 0.0;
  v39 = 0uLL;
  while (1)
  {
    v109 = v39;
    v110 = v37;
    v58 = v33;
    v59 = v111 + 32 * v35;
    v60 = *(v59 + 16);
    v61 = v35 + 1;
    v62 = v25 + *v59;
    v114 = *v59;
    v63 = *(&v114 + 1);
    v64 = *(&v60 + 1);
    v113 = v60;
    v65 = vabdd_f64(CGRectGetMidX(*(&v60 - 1)), v34);
    if ((v36 & 1) == 0 && v65 >= v38)
    {
      break;
    }

LABEL_19:
    v36 = 0;
    v112 = v35;
    v38 = v65;
    v35 = v61;
    v55 = v114;
    v37 = v114;
    v56 = v113;
    v39 = v113;
    v57 = v61 == v58;
    v33 = v58;
    if (v57)
    {
      goto LABEL_27;
    }
  }

  if (v61 != v58)
  {
    v61 = v35 + 2;
    while (1)
    {
      v66 = (v32 + 32 * v61);
      v67 = *(v66 + 1);
      v68 = v25 + *v66;
      v114 = *v66;
      v69 = *(&v114 + 1);
      v70 = *(&v67 + 1);
      v113 = v67;
      v65 = vabdd_f64(CGRectGetMidX(*(&v67 - 1)), v34);
      if (v65 < v38)
      {
        break;
      }

      ++v61;
      if (v30 + v61 == &dword_0 + 2)
      {
        goto LABEL_26;
      }
    }

    v35 = v61 - 1;
    goto LABEL_19;
  }

LABEL_26:
  v55 = v110;
  v56 = v109;
LABEL_27:
  v113 = v56;
  v114 = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEDC0, &unk_AF9180);
  inited = swift_initStackObject();
  v72 = v113;
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = v114;
  *(inited + 48) = v72;
  v73 = v112;
  if (v112 >= 1)
  {
    v74 = *&v4[v108];
    v8 = v107;
    v15 = v106;
    if (v112 <= *(v74 + 16))
    {
      v75 = (v74 + 32 * v112);

      v76 = v75[1];
      v114 = *v75;
      v113 = v76;
      inited = sub_6C31C(&dword_0 + 1, 2, 1, inited);
      *(inited + 16) = 2;
      v77 = v113;
      *(inited + 64) = v114;
      *(inited + 80) = v77;

      goto LABEL_31;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v8 = v107;
  v15 = v106;
LABEL_31:
  v78 = *&v4[v108];
  v30 = v105;
  if (v73 + 1 < *(v78 + 16))
  {
    if (v73 < -1)
    {
      goto LABEL_53;
    }

    v79 = v78 + 32 * (v73 + 1);
    v80 = *(v79 + 32);
    v113 = *(v79 + 48);
    v114 = v80;
    v30 = *(inited + 16);
    v15 = *(inited + 24);
    v8 = v30 + 1;

    if (v30 >= v15 >> 1)
    {
LABEL_54:
      inited = sub_6C31C((v15 > 1), v8, 1, inited);
    }

    p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
    v15 = v106;
    *(inited + 16) = v8;
    v81 = inited + 32 * v30;
    v82 = v113;
    *(v81 + 32) = v114;
    *(v81 + 48) = v82;

    v8 = v107;
    v30 = v105;
  }

  else
  {
    p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  }

  [v17 bounds];
  Width = CGRectGetWidth(v120);
  v84 = *(inited + 16);
  if (!v84)
  {

    goto LABEL_49;
  }

  v85 = 0;
  v86 = v115 + Width * 0.5;
  v112 = v84 - 1;
  v111 = inited + 88;
  v87 = 1;
  v88 = 0.0;
  v89 = 0.0;
  v90 = 0.0;
  v91 = 0.0;
  v92 = 0.0;
  while (2)
  {
    *&v113 = v91;
    *&v114 = v90;
    v115 = v88;
    v94 = inited + 32 + 32 * v85;
    v95 = *v94;
    v96 = *(v94 + 8);
    v97 = *(v94 + 16);
    v98 = *(v94 + 24);
    v93 = v85 + 1;
    v121.origin.x = v25 + *v94;
    v121.origin.y = v96;
    v121.size.width = v97;
    v121.size.height = v98;
    v99 = vabdd_f64(CGRectGetMidX(v121), v86);
    if ((v87 & 1) != 0 || v99 < v92)
    {
LABEL_39:
      v87 = 0;
      v88 = v95;
      v89 = v96;
      v90 = v97;
      v91 = v98;
      v92 = v99;
      v85 = v93;
      if (v93 == v84)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  if (v93 != v84)
  {
    v100 = -2 - v85;
    v101 = v112 - v85;
    v102 = (v111 + 32 * v85);
    while (1)
    {
      v95 = *(v102 - 3);
      v96 = *(v102 - 2);
      v97 = *(v102 - 1);
      v98 = *v102;
      v122.origin.x = v25 + v95;
      v122.origin.y = v96;
      v122.size.width = v97;
      v122.size.height = *v102;
      v99 = vabdd_f64(CGRectGetMidX(v122), v86);
      if (v99 < v92)
      {
        break;
      }

      --v100;
      v102 += 4;
      if (!--v101)
      {
        goto LABEL_46;
      }
    }

    v93 = -v100;
    goto LABEL_39;
  }

LABEL_46:
  v95 = v115;
  v96 = v89;
  v97 = *&v114;
  v98 = *&v113;
LABEL_47:

  v123.origin.x = v95;
  v123.origin.y = v96;
  v123.size.width = v97;
  v123.size.height = v98;
  a1 = CGRectGetMinX(v123);
  v8 = v107;
  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
  v15 = v106;
  v30 = v105;
LABEL_49:

  (*(v12 + 8))(v15, v11);
LABEL_50:

  (*(v12 + 56))(v8, 1, 1, v11);
  v103 = p_cache[439];
  swift_beginAccess();
  sub_57CF8(v8, v103 + v4);
  swift_endAccess();
  return a1;
}