double sub_1E1846408(unint64_t a1)
{
  v4 = sub_1E184ADBC();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v5 = *(v4 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = MEMORY[0x1E68FFD80](a1, v4);
LABEL_5:

  v2 = *(v5 + 16);
  if (v2 != 3)
  {
    if (qword_1ECEB1280 == -1)
    {
LABEL_10:
      v12 = sub_1E1AF591C();
      __swift_project_value_buffer(v12, qword_1ECEF4B98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B03760;
      sub_1E1AF382C();
      if (v2)
      {
        if (v2 == 1)
        {
          v13 = 0xE900000000000070;
          v14 = 0x756B636F4C706F74;
        }

        else
        {
          v13 = 0xEB0000000073746FLL;
          v14 = 0x68736E6565726373;
        }
      }

      else
      {
        v13 = 0xEF74736575716552;
        v14 = 0x7975426F546B7361;
      }

      *(&v16 + 1) = MEMORY[0x1E69E6158];
      *&v15 = v14;
      *(&v15 + 1) = v13;
      sub_1E1AF38BC();
      sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF382C();
      sub_1E1AF549C();

LABEL_19:

      return result;
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v6 = sub_1E18461D4(a1);
  if (v6)
  {
    v7 = v6;
    v8 = v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v15 = 0u;
      v16 = 0u;
      (*(*(*(v9 + 16) + 8) + 8))(v7, &v15, ObjectType);

      swift_unknownObjectRelease();
      sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      return result;
    }

    goto LABEL_19;
  }

  return result;
}

void sub_1E1846778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E184ADBC();
  v9 = sub_1E183BAE0(a2, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628, &qword_1E1B2D360);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E1B02CD0;
    *(v12 + 32) = v9;
    *(v12 + 40) = a1;
    v13 = MEMORY[0x1E68F8E70]();
    sub_1E18468B0(v7, v13);
    (*(v5 + 8))(v7, v4);
  }
}

void sub_1E18468B0(uint64_t a1, double a2)
{
  v5 = sub_1E184ADBC();
  v6 = sub_1E1AF019C();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 8 * v6 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  v7 = MEMORY[0x1E68FFD80](v6, v5);
LABEL_5:

  v3 = *(v7 + 16);
  if (v3 == 3)
  {
    sub_1E1845E60(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24C0, &unk_1E1B02650);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v27 = 0;
      memset(v26, 0, sizeof(v26));
      sub_1E1308058(v26, &qword_1ECEB50D0, &qword_1E1B13C90);
      return;
    }

    sub_1E1308EC0(v26, v29);
    v8 = v30;
    v9 = v31;
    __swift_project_boxed_opaque_existential_1Tm(v29, v30);
    v10 = (*(v9 + 8))(v8, v9);
    if (v10)
    {
      v11 = v10;
      v12 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        v15 = v30;
        v16 = v31;
        __swift_project_boxed_opaque_existential_1Tm(v29, v30);
        (*(v16 + 16))(v28, v15, v16);
        (*(*(*(v13 + 16) + 8) + 8))(v11, v28, ObjectType);

        swift_unknownObjectRelease();
        sub_1E1308058(v28, &qword_1ECEB2DF0, &unk_1E1B02CE0);
LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(v29);
        return;
      }
    }

    else
    {
      v21 = v30;
      v22 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      if ((*(v22 + 24))(v21, v22))
      {
        v23 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v23 + 8);
          v25 = swift_getObjectType();
          (*(*(v24 + 16) + 56))(a1, v25);

          swift_unknownObjectRelease();
          goto LABEL_24;
        }
      }
    }

    goto LABEL_24;
  }

  if (qword_1ECEB1280 != -1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v17 = sub_1E1AF591C();
  __swift_project_value_buffer(v17, qword_1ECEF4B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B04930;
  sub_1E1AF382C();
  v18 = sub_1E1AF018C();
  v30 = MEMORY[0x1E69E6530];
  v29[0] = v18;
  sub_1E1AF38BC();
  sub_1E1308058(v29, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  if (v3)
  {
    if (v3 == 1)
    {
      v19 = 0xE900000000000070;
      v20 = 0x756B636F4C706F74;
    }

    else
    {
      v19 = 0xEB0000000073746FLL;
      v20 = 0x68736E6565726373;
    }
  }

  else
  {
    v19 = 0xEF74736575716552;
    v20 = 0x7975426F546B7361;
  }

  v30 = MEMORY[0x1E69E6158];
  v29[0] = v20;
  v29[1] = v19;
  sub_1E1AF38BC();
  sub_1E1308058(v29, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  sub_1E1AF549C();
}

void sub_1E1846DEC()
{
  v2 = sub_1E1AF01FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E184ADBC();
  v7 = sub_1E1AF019C();
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 8 * v7 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_28;
  }

  v8 = MEMORY[0x1E68FFD80](v7, v6);
LABEL_5:

  v1 = *(v8 + 16);
  if (v1 != 3)
  {
    if (qword_1ECEB1280 == -1)
    {
LABEL_11:
      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1ECEF4B98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B04930;
      sub_1E1AF382C();
      v18 = sub_1E1AF018C();
      v37 = MEMORY[0x1E69E6530];
      v36[0] = v18;
      sub_1E1AF38BC();
      sub_1E1308058(v36, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF382C();
      if (v1)
      {
        if (v1 == 1)
        {
          v19 = 0xE900000000000070;
          v20 = 0x756B636F4C706F74;
        }

        else
        {
          v19 = 0xEB0000000073746FLL;
          v20 = 0x68736E6565726373;
        }
      }

      else
      {
        v19 = 0xEF74736575716552;
        v20 = 0x7975426F546B7361;
      }

      v37 = MEMORY[0x1E69E6158];
      v36[0] = v20;
      v36[1] = v19;
      sub_1E1AF38BC();
      sub_1E1308058(v36, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF382C();
      sub_1E1AF549C();

      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628, &qword_1E1B2D360);
  v9 = swift_allocObject();
  v30 = xmmword_1E1B02CD0;
  *(v9 + 16) = xmmword_1E1B02CD0;
  *(v9 + 32) = sub_1E1AF019C();
  *(v9 + 40) = 0;
  MEMORY[0x1E68F8E70](v9);
  sub_1E1845E60(v34);
  v10 = *(v3 + 8);
  v10(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B8, &qword_1E1B02648);
  if (swift_dynamicCast())
  {
    v28 = v10;
    v29 = v2;
    sub_1E1308EC0(&v31, v36);
    v11 = v37;
    v12 = v38;
    __swift_project_boxed_opaque_existential_1Tm(v36, v37);
    v13 = sub_1E1AF018C();
    (*(v12 + 8))(&v31, v13, v11, v12);
    if (v31)
    {
      v34[0] = v31;
      v34[1] = v32;
      v35 = v33;
      v14 = v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        ObjectType = swift_getObjectType();
        (*(*(*(v15 + 16) + 8) + 8))(*&v34[0], v34 + 8, ObjectType);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1E1308058(v34, &qword_1ECEB24C8, &qword_1E1B30450);
    }

    else
    {
      sub_1E1308058(&v31, &qword_1ECEB24D0, &unk_1E1B02660);
      v21 = v37;
      v22 = v38;
      __swift_project_boxed_opaque_existential_1Tm(v36, v37);
      v23 = sub_1E1AF018C();
      if (((*(v22 + 16))(v23, v21, v22) & 1) != 0 && (v24 = v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
      {
        v25 = *(v24 + 8);
        v26 = swift_getObjectType();
        v27 = swift_allocObject();
        *(v27 + 16) = v30;
        *(v27 + 32) = sub_1E1AF019C();
        *(v27 + 40) = 0;
        MEMORY[0x1E68F8E70](v27);
        (*(*(v25 + 16) + 56))(v5, v26);

        swift_unknownObjectRelease();
        v28(v5, v29);
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_1E1308058(&v31, &qword_1ECEB8E40, &unk_1E1B30440);
  }
}

void sub_1E184745C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1E184B3F8(a1);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
    v5 = *(v3 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
    v6 = *(v3 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
    v7 = *(v3 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
    v8 = *(v3 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
    sub_1E151F120(v4, v5, v6, v7, v8);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0x8000;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
}

double sub_1E1847500@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF019C();
  v4 = sub_1E184ADBC();
  if (v4 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v5)
  {
    v6 = sub_1E1AF019C();
    v7 = sub_1E184B3F8(v6);
    if (v7)
    {
      v8 = *(v7 + 24);

      v9 = *(v8 + 16);

      if (sub_1E1AF018C() < v9)
      {
        sub_1E1845E60(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E30, &qword_1E1B30428);
        if (swift_dynamicCast())
        {
          sub_1E1308EC0(v13, v16);
          v10 = v17;
          v11 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          (*(v11 + 8))(v10, v11);
          __swift_destroy_boxed_opaque_existential_1(v16);
          return result;
        }

        v14 = 0;
        memset(v13, 0, sizeof(v13));
        sub_1E1308058(v13, &qword_1ECEB8E38, &unk_1E1B30430);
      }
    }

    else
    {
      sub_1E1AF018C();
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x8000;
  return result;
}

uint64_t sub_1E18476C0()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_alwaysAllowReviews);

  return v2;
}

uint64_t sub_1E1847738()
{
  v1 = v0;
  v2 = sub_1E1AEFCCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v7)
    {
      return 0;
    }
  }

  sub_1E184C264(0);
  v9 = v8;
  v10 = sub_1E1848398(v8);
  v11 = sub_1E18488F4();
  v12 = *(v0 + v6);
  v101 = v10;
  v100 = v11;
  v99 = v9;
  if (v12)
  {
    v97 = v2;
    v13 = v12;
    goto LABEL_9;
  }

  v13 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v13)
  {
    v19 = 0;
LABEL_60:
    v58 = *(v7 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction);
    if (v58)
    {
      v59 = *(v58 + 24);
      v98 = *(v58 + 16);
      v97 = v59;

      v60 = *(v1 + v6);
      if (v60)
      {
LABEL_62:
        v61 = v60;
        goto LABEL_66;
      }
    }

    else
    {
      v98 = 0;
      v97 = 0;
      v60 = *(v1 + v6);
      if (v60)
      {
        goto LABEL_62;
      }
    }

    v61 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v61)
    {
      v96 = MEMORY[0x1E69E7CC0];
LABEL_67:
      LODWORD(v95) = *(v7 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_theme);
      v40 = sub_1E184C1A8();
      if (*(v1 + v6))
      {
        v63 = *(v1 + v6);
      }

      else
      {
        v63 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
        if (!v63)
        {
          v20 = 0;
LABEL_72:
          v38 = *(v7 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted + 8);
          v93 = *(v7 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);
          v39 = *(*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) + 40);
          v64 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);
          v92 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController);
          v91 = v64;
          LODWORD(v1) = *(v7 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete);
          v65 = *(v7 + 320);
          v103 = *(v7 + 312);
          type metadata accessor for ProductTopLockup(0);
          v18 = swift_allocObject();
          *(v18 + 216) = 0u;
          *(v18 + 232) = 0u;
          *(v18 + 248) = 0;
          v37 = v7;
          v66 = OBJC_IVAR____TtC11AppStoreKit16ProductTopLockup_impressionMetrics;
          v67 = sub_1E1AF46DC();
          (*(*(v67 - 8) + 56))(v18 + v66, 1, 1, v67);
          v68 = qword_1EE1F1D28;

          v104 = v65;

          if (v68 != -1)
          {
            goto LABEL_101;
          }

          goto LABEL_73;
        }
      }

      v20 = *(v63 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails);

      goto LABEL_72;
    }

LABEL_66:

    sub_1E184D390(v61);
    v96 = v62;

    goto LABEL_67;
  }

  v97 = v2;

LABEL_9:
  v103 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle);

  v14 = *(v1 + v6);
  v94 = v7;
  v104 = v6;
  v96 = v3;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v15)
    {
      v16 = 0;
      goto LABEL_18;
    }
  }

  v16 = *(v15 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork);

  if (*(v1 + v6))
  {
    v17 = *(v1 + v6);
    goto LABEL_20;
  }

LABEL_18:
  v17 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v17)
  {
    v20 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v20 = *(v17 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay);

  if (*(v1 + v104))
  {
    v21 = *(v1 + v104);
    goto LABEL_25;
  }

LABEL_23:
  v21 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v21)
  {
    v22 = 0;
    v23 = v16;
    goto LABEL_28;
  }

LABEL_25:
  v22 = *(v21 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo);

  v23 = v16;
  if (*(v1 + v104))
  {
    v18 = *(v1 + v104);
LABEL_30:
    v24 = *(v18 + 48);

    goto LABEL_31;
  }

LABEL_28:
  v18 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v18)
  {

    goto LABEL_30;
  }

  v24 = 0;
LABEL_31:
  v95 = type metadata accessor for Uber();
  v19 = swift_allocObject();
  if (!v23)
  {
    v110 = 0;
    v111 = 0;
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_35:
    v27 = 0;
    v28 = 0;
    goto LABEL_36;
  }

  v25 = *(v23 + 16);

  v110 = v25;
  v111 = v26;
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_33:
  v27 = v20[2];

LABEL_36:
  v112 = v27;
  v113 = v28;
  v29 = *&aBackgrou_1[8 * v103 + 8];
  v114 = *&aAbove_5[8 * v103];
  v115 = v29;
  v102 = v24;
  if (v22)
  {
    v30 = v96;
    v18 = v5;
    v31 = v97;
    (*(v96 + 16))(v5, v22 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v97);
    v32 = sub_1E1AEFBDC();
    v34 = v33;
    (*(v30 + 8))(v18, v31);
    v24 = v102;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  LODWORD(v103) = v103;
  v116 = v32;
  v117 = v34;
  v118 = 0;
  v119 = 0;
  v98 = v23;
  if (v24)
  {
    v35 = *(v24 + 16);
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v37 = 0;
  v38 = v109;
  v120 = v35;
  v121 = v36;
  v122 = 0;
  v123 = 0;
  v39 = v109;
  v40 = MEMORY[0x1E69E7CC0];
LABEL_43:
  if (v37 <= 7)
  {
    v41 = 7;
  }

  else
  {
    v41 = v37;
  }

  v42 = v41 + 1;
  v43 = 16 * v37 + 40;
  while (1)
  {
    if (v37 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
      swift_arrayDestroy();
      v52 = sub_1E1AF637C();

      v105 = v52;
      sub_1E1AF6F6C();
      v53 = v107;
      *(v19 + 80) = v106;
      *(v19 + 96) = v53;
      *(v19 + 112) = v108;
      *(v19 + 16) = v103;
      v54 = v98;
      *(v19 + 24) = v98;
      v55 = v20;
      if (!v20)
      {

        v55 = v54;
      }

      v56 = v22 != 0;
      *(v19 + 32) = v55;
      *(v19 + 40) = v22;
      *(v19 + 48) = v22;
      *(v19 + 56) = v24;
      *(v19 + 64) = 0;
      *(v19 + 72) = 0;
      v57 = v104;
      if (v22 | v54)
      {
        goto LABEL_58;
      }

      if (v24)
      {

        v75 = ASKDeviceTypeGetCurrent();
        v76 = sub_1E1AF5DFC();
        v78 = v77;
        if (v76 == sub_1E1AF5DFC() && v78 == v79)
        {

          v56 = 2;
LABEL_58:
          *(v19 + 17) = v56;

LABEL_59:
          v7 = v94;
          v6 = v57;

          goto LABEL_60;
        }

        v85 = sub_1E1AF74AC();

        if (v85)
        {
          v56 = 2;
          goto LABEL_58;
        }
      }

      sub_1E134B88C(v19 + 80);
      swift_deallocPartialClassInstance();
      v19 = 0;
      goto LABEL_59;
    }

    if (v42 == ++v37)
    {
      break;
    }

    v44 = v43 + 16;
    v18 = *&v109[v43];
    v43 += 16;
    if (v18)
    {
      v97 = v1;
      v45 = v19;
      v46 = v22;
      v47 = v20;
      v48 = *(&v107 + v44);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1E130C06C(0, *(v40 + 16) + 1, 1, v40);
      }

      v50 = *(v40 + 16);
      v49 = *(v40 + 24);
      if (v50 >= v49 >> 1)
      {
        v40 = sub_1E130C06C((v49 > 1), v50 + 1, 1, v40);
      }

      *(v40 + 16) = v50 + 1;
      v51 = v40 + 16 * v50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v18;
      v20 = v47;
      v22 = v46;
      v19 = v45;
      v1 = v97;
      v24 = v102;
      v38 = v109;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_101:
  swift_once();
LABEL_73:
  sub_1E134E724(qword_1EE216D48, v18 + 176);
  *(v18 + 16) = v37;
  *(v18 + 24) = v19;
  v69 = v97;
  *(v18 + 32) = v98;
  *(v18 + 40) = v69;
  *(v18 + 48) = v96;
  *(v18 + 56) = v95;
  v70 = v99;
  *(v18 + 64) = v40;
  *(v18 + 72) = v70;
  *(v18 + 80) = 0;
  *(v18 + 120) = v20 != 0;
  LODWORD(v102) = v1 ^ 1;
  if (v20)
  {

    countAndFlagsBits = v20[2];
    object = v20[3];
    v74 = v20[4];
    v73 = v20[5];

    goto LABEL_75;
  }

  if (!v39)
  {
    goto LABEL_91;
  }

  if (v39[32] > 1u)
  {
    if (v39[32] == 2)
    {
      goto LABEL_89;
    }

LABEL_91:

LABEL_92:

    countAndFlagsBits = 0;
    v74 = 0;
    v73 = 0;
    object = 1;
    goto LABEL_93;
  }

  if (v39[32])
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_89:
    v80 = sub_1E1AF74AC();

    if ((v80 & 1) == 0)
    {

      goto LABEL_92;
    }
  }

  v86._object = 0x80000001E1B792A0;
  v86._countAndFlagsBits = 0xD000000000000027;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v88 = localizedString(_:comment:)(v86, v87);
  countAndFlagsBits = v88._countAndFlagsBits;
  object = v88._object;
  v74 = sub_1E15314E8(v37, v93, v38, v92, v91);
  v73 = v89;

LABEL_75:

LABEL_93:
  *(v18 + 88) = countAndFlagsBits;
  *(v18 + 96) = object;
  *(v18 + 104) = v74;
  *(v18 + 112) = v73;
  *(v18 + 57) = v102 & 1;
  v81 = v100;
  *(v18 + 144) = 0;
  *(v18 + 152) = v81;
  v82 = v101;
  *(v18 + 128) = 0;
  *(v18 + 136) = v82;
  v83 = v104;
  *(v18 + 160) = v103;
  *(v18 + 168) = v83;
  return v18;
}

uint64_t sub_1E1848398(uint64_t a1)
{
  v3 = sub_1E1AEFEAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    goto LABEL_5;
  }

  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v7)
  {

LABEL_5:
    v8 = *(v7 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner);

    if (v8)
    {
      return v8;
    }
  }

  if (a1)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    if (*(a1 + 16) <= 1u || *(a1 + 16) == 2)
    {
      if (sub_1E1AF74AC())
      {
        v13 = 256;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 256;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v12 = 1;
  }

  v14 = sub_1E18EAEB0(v10, v9, v11, v13 | v12, *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph));

  if (!v14)
  {
    return v14;
  }

  if (v14 == 1)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v15._object = 0x80000001E1B794E0;
    v15._countAndFlagsBits = 0xD000000000000017;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = localizedString(_:comment:)(v15, v16);
    type metadata accessor for Banner();
    v8 = swift_allocObject();
    sub_1E134FD1C(&v41, &v38, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v39 + 1))
    {
      v18 = v39;
      *(v8 + 104) = v38;
      *(v8 + 120) = v18;
      *(v8 + 136) = v40;
    }

    else
    {
      sub_1E1AEFE9C();
      v27 = sub_1E1AEFE7C();
      v29 = v28;
      (*(v4 + 8))(v6, v3);
      v36 = v27;
      v37 = v29;
      sub_1E1AF6F6C();
      sub_1E1308058(&v38, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    sub_1E1308058(&v41, &unk_1ECEB5670, qword_1E1B03EC0);
    v30 = MEMORY[0x1E69E7CC0];
    *(v8 + 16) = v17;
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v19 = sub_1E1AF055C();
    *(&v39 + 1) = v19;
    v40 = sub_1E1852EC0(&qword_1ECEB7FB8, MEMORY[0x1E699C030], MEMORY[0x1E699C028]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v38);
    (*(*(v19 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E699C020], v19);
    LOBYTE(v19) = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v21 = ". Incompatible contentTypes";
    if (v19)
    {
      v21 = "OFFER_MANAGED_ID_BANNER";
      v22 = 0xD00000000000001FLL;
    }

    else
    {
      v22 = 0xD000000000000017;
    }

    v23 = v21 | 0x8000000000000000;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v25 = localizedString(_:comment:)(*&v22, v24);
    type metadata accessor for Banner();
    v8 = swift_allocObject();
    sub_1E134FD1C(&v41, &v38, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v39 + 1))
    {
      v26 = v39;
      *(v8 + 104) = v38;
      *(v8 + 120) = v26;
      *(v8 + 136) = v40;
    }

    else
    {
      sub_1E1AEFE9C();
      v31 = sub_1E1AEFE7C();
      v33 = v32;
      (*(v4 + 8))(v6, v3);
      v36 = v31;
      v37 = v33;
      sub_1E1AF6F6C();
      sub_1E1308058(&v38, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    sub_1E1308058(&v41, &unk_1ECEB5670, qword_1E1B03EC0);
    v30 = MEMORY[0x1E69E7CC0];
    *(v8 + 16) = v25;
  }

  *(v8 + 32) = 0;
  *(v8 + 40) = v30;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = xmmword_1E1B04490;
  *(v8 + 96) = 2;
  return v8;
}

uint64_t sub_1E18488F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28[-v2];
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28[-v9];
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v11 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v11)
    {
LABEL_6:
      v13 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
      if (!v13 || *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_shouldDisplayBetaBanner) != 1)
      {
        return 0;
      }

      v14 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1E1B02CC0;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1E13C2F48();
      *(v15 + 32) = v14;
      *(v15 + 40) = v13;

      v16 = sub_1E1AF5E3C();
      v18 = v17;
      sub_1E1AEFCAC();
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {

        sub_1E1308058(v3, &unk_1ECEB4B60, &unk_1E1B02620);
        return sub_1E184964C();
      }

      (*(v5 + 32))(v10, v3, v4);
      (*(v5 + 16))(v7, v10, v4);
      v20 = objc_allocWithZone(MEMORY[0x1E6963630]);
      v21 = sub_1E13C2F9C(v7);
      v22 = [v21 bundleRecord];
      v23 = [v22 bundleIdentifier];

      if (v23)
      {
        v24 = sub_1E1AF5DFC();
        v26 = v25;

        if (v24 == 0xD000000000000014 && 0x80000001E1B5BFD0 == v26)
        {

LABEL_18:
          v12 = sub_1E1848D1C(v16, v18);

          (*(v5 + 8))(v10, v4);
          return v12;
        }

        v27 = sub_1E1AF74AC();

        if (v27)
        {
          goto LABEL_18;
        }
      }

      (*(v5 + 8))(v10, v4);
      return sub_1E184964C();
    }
  }

  v12 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner);

  if (!v12)
  {
    goto LABEL_6;
  }

  return v12;
}

uint64_t sub_1E1848D1C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v61 = a1;
  v57 = sub_1E1AEFEAC();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v56 - v7;
  v66 = sub_1E1AEFCCC();
  v9 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v56 - v16;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x80000001E1B5BFF0;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v17, v18);
  countAndFlagsBits = v19._countAndFlagsBits;
  v20 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  object = v19._object;
  if (v20)
  {
    v65 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion);

    v21._countAndFlagsBits = 0x5050415F41544542;
    v21._object = 0xEF52454E4E41425FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v64 = localizedString(_:comment:)(v21, v22)._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E1B02CD0;
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1E13C2F48();
    *(v23 + 32) = v65;
    *(v23 + 40) = v20;
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    v26 = countAndFlagsBits;
    *(v23 + 64) = v25;
    *(v23 + 72) = v26;
    *(v23 + 80) = v19._object;
  }

  else
  {
    v27._object = 0x80000001E1B5C010;
    v27._countAndFlagsBits = 0xD000000000000019;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    localizedString(_:comment:)(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E1B02CC0;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1E13C2F48();
    *(v29 + 32) = countAndFlagsBits;
    *(v29 + 40) = v19._object;
  }

  v65 = sub_1E1AF5DCC();
  v64 = v30;

  v31 = v67;
  sub_1E1AF3DFC();
  type metadata accessor for ExternalUrlAction(0);
  v32 = swift_allocObject();
  sub_1E1AEFCAC();
  v33 = v66;
  if ((*(v9 + 48))(v8, 1, v66) == 1)
  {
    (*(v12 + 8))(v31, v11);

    sub_1E1308058(v8, &unk_1ECEB4B60, &unk_1E1B02620);
    swift_deallocPartialClassInstance();
    v32 = 0;
  }

  else
  {
    v34 = v59;
    (*(v9 + 32))(v59, v8, v33);
    v62 = v9;
    (*(v9 + 16))(v32 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v34, v33);
    *(v32 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 1;
    *(v32 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
    v35 = v32 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v35 = 0;
    v35[8] = 1;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    (*(v12 + 16))(v14, v31, v11);
    v36 = sub_1E1AF46DC();
    (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
    v37 = (v32 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v37 = 0u;
    v37[1] = 0u;
    sub_1E134FD1C(&v77, &v71, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v72 + 1))
    {
      v38 = v33;
      v74 = v71;
      v75 = v72;
      v76 = v73;
    }

    else
    {
      v39 = v56;
      sub_1E1AEFE9C();
      v40 = sub_1E1AEFE7C();
      v42 = v41;
      (*(v58 + 8))(v39, v57);
      v69 = v40;
      v70 = v42;
      v34 = v59;
      v38 = v66;
      sub_1E1AF6F6C();
      sub_1E1308058(&v71, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v43 = object;
    v44 = countAndFlagsBits;
    sub_1E1308058(&v77, &unk_1ECEB5670, qword_1E1B03EC0);
    (*(v62 + 8))(v34, v38);
    (*(v12 + 8))(v67, v11);
    v45 = v32 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v46 = v75;
    *v45 = v74;
    *(v45 + 1) = v46;
    *(v45 + 4) = v76;
    sub_1E137F600(v60, v32 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
    v32[2] = v44;
    v32[3] = v43;
    v32[4] = 0;
    v32[5] = 0;
    (*(v12 + 32))(v32 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v14, v11);
  }

  type metadata accessor for Banner();
  v77 = 0u;
  v78 = 0u;
  v79 = 0;
  v47 = swift_allocObject();
  sub_1E134FD1C(&v77, &v74, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v75 + 1))
  {
    v48 = v75;
    *(v47 + 104) = v74;
    *(v47 + 120) = v48;
    *(v47 + 136) = v76;
  }

  else
  {
    v49 = v56;
    sub_1E1AEFE9C();
    v50 = sub_1E1AEFE7C();
    v52 = v51;
    (*(v58 + 8))(v49, v57);
    *&v71 = v50;
    *(&v71 + 1) = v52;
    sub_1E1AF6F6C();
    sub_1E1308058(&v74, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(&v77, &unk_1ECEB5670, qword_1E1B03EC0);
  v53 = v64;
  *(v47 + 16) = v65;
  *(v47 + 24) = v53;
  v54 = MEMORY[0x1E69E7CC0];
  *(v47 + 32) = v32;
  *(v47 + 40) = v54;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 48) = 0;
  *(v47 + 72) = 0;
  *(v47 + 80) = xmmword_1E1B04490;
  *(v47 + 96) = 2;
  return v47;
}

uint64_t sub_1E184964C()
{
  v1 = sub_1E1AEFEAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion);

    v7._object = 0x80000001E1B5C060;
    v7._countAndFlagsBits = 0xD000000000000017;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    localizedString(_:comment:)(v7, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B02CC0;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1E13C2F48();
    *(v9 + 32) = v6;
    *(v9 + 40) = v5;
    countAndFlagsBits = sub_1E1AF5DCC();
    object = v11;
  }

  else
  {
    v13._countAndFlagsBits = 0xD000000000000021;
    v13._object = 0x80000001E1B5C030;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = localizedString(_:comment:)(v13, v14);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
  }

  type metadata accessor for Banner();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v16 = swift_allocObject();
  sub_1E134FD1C(v27, &v24, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v25 + 1))
  {
    v17 = v25;
    *(v16 + 104) = v24;
    *(v16 + 120) = v17;
    *(v16 + 136) = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v20 = v19;
    (*(v2 + 8))(v4, v1);
    v23[1] = v18;
    v23[2] = v20;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v27, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v16 + 16) = countAndFlagsBits;
  *(v16 + 24) = object;
  v21 = MEMORY[0x1E69E7CC0];
  *(v16 + 32) = 0;
  *(v16 + 40) = v21;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 48) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = xmmword_1E1B04490;
  *(v16 + 96) = 2;
  return v16;
}

uint64_t sub_1E1849908()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return v1;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction);

  if (!v2)
  {
    return 0;
  }

  v1 = *(v2 + 16);

  return v1;
}

void sub_1E18499C0(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v2 || (v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct)) != 0)
  {
    v3 = *(v2 + 24);
    *a1 = *(v2 + 16);
    a1[1] = v3;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t sub_1E18499F4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
LABEL_8:
      v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
      if (!v4)
      {
        v3 = 0;
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties);

  if (v3)
  {
    goto LABEL_13;
  }

  if (!*(v0 + v1))
  {
    goto LABEL_8;
  }

  v4 = *(v0 + v1);
LABEL_10:
  v3 = *(v4 + 240);

  if (v3)
  {
    v64 = *(v3 + 16);
    v5 = *(v3 + 32);
    v6 = *(v3 + 48);
    v60 = *(v3 + 40);
    v62 = *(v3 + 24);
    v58 = *(v3 + 56);
    v54 = *(v3 + 64);
    v48 = *(v3 + 80);
    v50 = *(v3 + 72);
    v44 = *(v3 + 88);
    v7 = *(v3 + 104);
    v8 = *(v3 + 112);
    v74 = *(v3 + 120);
    v70 = *(v3 + 122);
    v72 = *(v3 + 121);
    v66 = *(v3 + 124);
    v68 = *(v3 + 123);
    v80 = *(v3 + 126);
    v78 = *(v3 + 128);
    v76 = *(v3 + 136);
    sub_1E134FD1C(v3 + 144, &v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);

    v9 = v5;

    v10 = v6;

    v11 = v7;
    v12 = v8;
    sub_1E139D580(v7, v8);
    v13 = *(v3 + 240);
    v56 = *(v3 + 232);
    v14 = *(v3 + 224);
    v52 = *(v3 + 216);
    v15 = *(v3 + 200);
    v46 = *(v3 + 192);
    v16 = *(v3 + 184);
    v42 = *(v3 + 176);

    type metadata accessor for OfferDisplayProperties();
    v3 = swift_allocObject();
    *(v3 + 16) = v64;
    *(v3 + 24) = v62;
    *(v3 + 32) = v9;
    *(v3 + 40) = v60;
    *(v3 + 48) = v10;
    *(v3 + 56) = v58;
    *(v3 + 64) = v54;
    *(v3 + 72) = v50;
    *(v3 + 80) = v48;
    *(v3 + 88) = v44;
    *(v3 + 96) = 770;
    *(v3 + 104) = v11;
    *(v3 + 112) = v12;
    *(v3 + 120) = v74;
    *(v3 + 121) = v72;
    *(v3 + 122) = v70;
    *(v3 + 123) = v68;
    *(v3 + 124) = v66;
    *(v3 + 125) = 0;
    *(v3 + 126) = v80;
    *(v3 + 128) = v78;
    *(v3 + 136) = v76;
    v17 = v83;
    *(v3 + 144) = v82;
    *(v3 + 160) = v17;
    *(v3 + 176) = v42;
    *(v3 + 184) = v16;
    *(v3 + 192) = v46;
    *(v3 + 200) = v15;
    *(v3 + 208) = 0;
    *(v3 + 216) = v52;
    *(v3 + 224) = v14;
    *(v3 + 232) = v56;
    *(v3 + 240) = v13;
  }

LABEL_13:
  v18 = *(*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) + 40);
  if (!v18)
  {
    return v3;
  }

  v19 = *(v18 + 24);
  if (!v19)
  {
    return v3;
  }

  if (!v3)
  {
    v21 = 16;
    goto LABEL_17;
  }

  v20 = *(v3 + 96);
  v21 = *(v3 + 97);
  if (v20 == 7)
  {
LABEL_17:
    LOBYTE(v20) = *(v19 + 96);
  }

  v81 = v20;
  v79 = *(v19 + 16);
  v22 = *(v19 + 32);
  v23 = *(v19 + 48);
  v75 = *(v19 + 40);
  v77 = *(v19 + 24);
  v24 = *(v19 + 64);
  v73 = *(v19 + 56);
  v25 = *(v19 + 72);
  v26 = *(v19 + 80);
  v27 = *(v19 + 88);
  if (v21 == 16)
  {
    LOBYTE(v21) = *(v19 + 97);
  }

  v55 = v21;
  v28 = *(v19 + 104);
  v29 = *(v19 + 112);
  v43 = v29;
  v45 = v28;
  v63 = *(v19 + 121);
  v61 = *(v19 + 122);
  v57 = *(v19 + 124);
  v59 = *(v19 + 123);
  v71 = *(v19 + 126);
  v69 = *(v19 + 128);
  v65 = *(v19 + 120);
  v67 = *(v19 + 136);
  sub_1E134FD1C(v19 + 144, &v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  sub_1E139D580(v28, v29);
  v40 = v27;
  v41 = v26;
  v30 = *(v19 + 240);
  v53 = *(v19 + 232);
  v31 = v23;
  v32 = *(v19 + 224);
  v33 = v24;
  v34 = *(v19 + 200);
  v49 = *(v19 + 192);
  v51 = *(v19 + 216);
  v35 = v25;
  v36 = *(v19 + 184);
  v47 = *(v19 + 176);

  type metadata accessor for OfferDisplayProperties();
  v37 = swift_allocObject();
  *(v37 + 16) = v79;
  *(v37 + 24) = v77;
  *(v37 + 32) = v22;
  *(v37 + 40) = v75;
  *(v37 + 48) = v31;
  *(v37 + 56) = v73;
  *(v37 + 64) = v33;
  *(v37 + 72) = v35;
  *(v37 + 80) = v41;
  *(v37 + 88) = v40;
  *(v37 + 96) = v81;
  *(v37 + 97) = v55;
  *(v37 + 104) = v45;
  *(v37 + 112) = v43;
  *(v37 + 120) = v65;
  *(v37 + 121) = v63;
  *(v37 + 122) = v61;
  *(v37 + 123) = v59;
  *(v37 + 124) = v57;
  *(v37 + 125) = 0;
  *(v37 + 126) = v71;
  *(v37 + 128) = v69;
  *(v37 + 136) = v67;
  v38 = v83;
  *(v37 + 144) = v82;
  *(v37 + 160) = v38;

  *(v37 + 176) = v47;
  *(v37 + 184) = v36;
  *(v37 + 192) = v49;
  *(v37 + 200) = v34;
  *(v37 + 208) = 0;
  *(v37 + 216) = v51;
  *(v37 + 224) = v32;
  *(v37 + 232) = v53;
  v3 = v37;
  *(v37 + 240) = v30;
  return v3;
}

uint64_t sub_1E1849F20()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
LABEL_7:
    v11 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
      v13 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
      v14 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
      v15 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 48);
      v18 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 32);
      v19 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
      v16 = v8;
      v17 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 40);
      sub_1E1475BB8(v19, v12, v13, v14, v18, v17, v15);
      sub_1E147A814(v5, v6, v7, 0, v9, v16, v10);
      if (v14)
      {
        sub_1E147A814(v19, v12, v13, v14, v18, v17, v15);
        return 1;
      }
    }

    else
    {
      sub_1E147A814(v5, v6, v7, 0, v9, v8, v10);
    }

    return 0;
  }

  v4 = (v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
  if (!v4[3])
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v9 = v4[4];
    v8 = v4[5];
    v10 = v4[6];
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1E184A09C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
    if (v4[3])
    {
      return 1;
    }

    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v9 = v4[4];
    v8 = v4[5];
    v10 = v4[6];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
    v13 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
    v14 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
    v15 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 48);
    v18 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 32);
    v19 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
    v16 = v8;
    v17 = *(v11 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 40);
    sub_1E1475BB8(v19, v12, v13, v14, v18, v17, v15);
    sub_1E147A814(v5, v6, v7, 0, v9, v16, v10);
    if (v14)
    {
      sub_1E147A814(v19, v12, v13, v14, v18, v17, v15);
      return 1;
    }
  }

  else
  {
    sub_1E147A814(v5, v6, v7, 0, v9, v8, v10);
  }

  return 0;
}

void sub_1E184A21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF00EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer;
  v10 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer);
  if (v10 == 2)
  {
    return;
  }

  v28 = v6;
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 16);
  v12(v35, ObjectType, a2);
  if (v38 >> 60)
  {
    if (v38 >> 60 != 8 || ((v13 = v37 | v39, v14 = v35[3] | v35[2] | v35[1], v38 != 0x8000000000000000) || v13 | v35[0] | v36 | v14) && (v38 != 0x8000000000000000 || v35[0] != 4 || v13 | v36 | v14))
    {
      sub_1E139CEA8(v35);
      if (v10)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (LOBYTE(v35[0]) == 1)
  {
LABEL_12:
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v10)
  {
    return;
  }

LABEL_15:
  v12(v30, ObjectType, a2);
  if (v33 >> 60)
  {
    if (v33 >> 60 != 8)
    {
LABEL_22:
      sub_1E139CEA8(v30);
LABEL_25:
      LOBYTE(v17) = 1;
      goto LABEL_26;
    }

    v15 = v32 | v34;
    v16 = v30[3] | v30[2] | v30[1];
    if (v33 != 0x8000000000000000 || v15 | v30[0] | v31 | v16)
    {
      if (v33 == 0x8000000000000000 && v30[0] == 4)
      {
        v17 = v15 | v31 | v16;
        if (!v17)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_22;
    }
  }

  else if (LOBYTE(v30[0]) != 1)
  {
    goto LABEL_25;
  }

  LOBYTE(v17) = 0;
LABEL_26:
  *(v2 + v9) = v17;
  sub_1E1AF00DC();
  v18 = sub_1E184ADBC();
  if (v18 >> 62)
  {
    v19 = sub_1E1AF71CC();

    if (v19 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    for (i = 0; v19 != i; ++i)
    {
      v21 = sub_1E184B3F8(i);
      if (!v21)
      {
        continue;
      }

      v29[0] = *(v21 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0xD000000000000010 && 0x80000001E1B57D10 == v22)
      {
      }

      else
      {
        v23 = sub_1E1AF74AC();

        if ((v23 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_1E1AF00AC();
LABEL_32:
    }
  }

  if (sub_1E1AF009C() >= 1)
  {
    v24 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      v26 = swift_getObjectType();
      (*(*(v25 + 16) + 48))(v8, v26);
      swift_unknownObjectRelease();
    }
  }

  (*(v5 + 8))(v8, v28);
}

void sub_1E184A5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF00EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  ObjectType = swift_getObjectType();
  v9 = 1;
  (*(a2 + 40))(v25, 1, ObjectType, a2);
  v10 = v28 >> 60;
  if (v28 >> 60 != 2 && v10 != 7)
  {
    if (v10 != 8 || v29 || v28 != 0x8000000000000000 || v25[0] != 1 || (v12 = vorrq_s8(v26, v27), *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v25[1]))
    {
      v9 = 0;
    }
  }

  sub_1E139CEA8(v25);
  v13 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isLocalApplicationForAppEvents);
  if (v13 != 2 && ((v9 ^ v13) & 1) != 0)
  {
    *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = v9;
    sub_1E1AF00DC();
    v14 = sub_1E184ADBC();
    v23 = v4;
    if (v14 >> 62)
    {
      v15 = sub_1E1AF71CC();

      if (v15 < 0)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15)
    {
      for (i = 0; v15 != i; ++i)
      {
        v17 = sub_1E184B3F8(i);
        if (!v17)
        {
          continue;
        }

        v24[0] = *(v17 + 16);
        if (Shelf.ContentType.rawValue.getter() == 0x6F6D6F7250707061 && v18 == 0xEC0000006E6F6974)
        {
        }

        else
        {
          v19 = sub_1E1AF74AC();

          if ((v19 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_1E1AF00AC();
LABEL_19:
      }
    }

    if (sub_1E1AF009C() >= 1)
    {
      v20 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 8);
        v22 = swift_getObjectType();
        (*(*(v21 + 16) + 48))(v7, v22);
        swift_unknownObjectRelease();
      }
    }

    (*(v5 + 8))(v7, v23);
  }
}

uint64_t sub_1E184A8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E184A910, 0, 0);
}

uint64_t sub_1E184A910()
{
  v1 = v0[8];
  v2 = *(v0[6] + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);
  ObjectType = swift_getObjectType();
  v0[9] = swift_getObjectType();
  (*(v1 + 8))();
  v4 = v0[3];
  v0[4] = v0[2];
  v0[5] = v4;
  v7 = (*(v2 + 104) + **(v2 + 104));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1E184AA8C;

  return v7(v0 + 4, ObjectType, v2);
}

uint64_t sub_1E184AA8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1E184ABAC, 0, 0);
}

uint64_t sub_1E184ABAC()
{
  v1 = v0[6];
  v2 = (*(v0[8] + 24))(v0[9]) & 1;
  v3 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_shouldDisplayBetaBanner;
  v4 = v0[6];
  if (v2 != *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_shouldDisplayBetaBanner))
  {
    goto LABEL_2;
  }

  v8 = v0[12];
  v9 = *(v4 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion + 8);
  if (v8)
  {
    if (v9)
    {
      v10 = v0[11] == *(v4 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion) && v8 == v9;
      if (v10 || (sub_1E1AF74AC() & 1) != 0)
      {

        goto LABEL_3;
      }

      v4 = v0[6];
    }

LABEL_2:
    v5 = *(v0 + 11);
    *(v1 + v3) = v2;
    *(v4 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion) = v5;

    ProductPresenter.reloadTopLockup()();
    goto LABEL_3;
  }

  if (v9)
  {
    goto LABEL_2;
  }

LABEL_3:
  v6 = v0[1];

  return v6();
}

uint64_t sub_1E184ACC8()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E184AD0C(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E184ADBC()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
LABEL_11:

      return MEMORY[0x1E69E7CC0];
    }
  }

  v2 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    v3 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
  }

  v4 = *(v1 + *v3);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v4;
}

double sub_1E184AE94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  sub_1E1AF00EC();
  v8 = MEMORY[0x1E69E7CC0];
  v21[1] = MEMORY[0x1E69E7CC0];
  sub_1E1852EC0(&unk_1EE1E22F8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3080, &unk_1E1B39170);
  sub_1E13FF6F8(&qword_1EE1D2610, &qword_1ECEB3080, &unk_1E1B39170);
  v20[4] = a3;
  sub_1E1AF6EEC();
  v9 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v4 + v9))
  {
    v10 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
  }

  v11 = *v10;
  if (*(a1 + v11))
  {
    v12 = *(a1 + v11);
  }

  else
  {
    v12 = v8;
  }

  if (*(a2 + v11))
  {
    v13 = *(a2 + v11);
  }

  else
  {
    v13 = v8;
  }

  if (v13 >> 62)
  {
LABEL_25:
    v14 = sub_1E1AF71CC();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1E68FFD80](v15, v13);
        v16 = v17;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_22;
        }
      }

      v21[0] = v16;
      MEMORY[0x1EEE9AC00](v17);
      v20[2] = v21;
      if (sub_1E14F202C(sub_1E185399C, v20, v12))
      {
        sub_1E1AF00AC();
      }

      ++v15;
    }

    while (v18 != v14);
  }

  return result;
}

char *sub_1E184B108(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v5 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
    swift_beginAccess();
    if (*(v2 + v5))
    {
      v7 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
    }

    else
    {
      v7 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
    }

    v8 = *v7;
    if (*(a1 + v8))
    {
      v9 = *(a1 + v8);
    }

    else
    {
      v9 = v4;
    }

    if (*(a2 + v8))
    {
      v10 = *(a2 + v8);
    }

    else
    {
      v10 = v4;
    }

    if (v10 >> 62)
    {
LABEL_43:
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12 = sub_1E1AF71CC();
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v13 = 0;
      v14 = MEMORY[0x1E69E7CC0];
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v15 = v13;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1E68FFD80](v15, v10);
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v15 >= *(v11 + 16))
            {
              goto LABEL_42;
            }

            v16 = *&v10[8 * v15 + 32];

            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }
          }

          v17 = sub_1E183BAE0(v16, v9);
          if ((v18 & 1) == 0 && v15 != v17)
          {
            break;
          }

          ++v15;
          if (v13 == v12)
          {
            goto LABEL_39;
          }
        }

        v31 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_1E172CD18(0, *(v4 + 2) + 1, 1, v4);
        }

        v21 = *(v4 + 2);
        v20 = *(v4 + 3);
        v22 = v21 + 1;
        v23 = v31;
        if (v21 >= v20 >> 1)
        {
          v29 = sub_1E172CD18((v20 > 1), v21 + 1, 1, v4);
          v22 = v21 + 1;
          v23 = v31;
          v4 = v29;
        }

        *(v4 + 2) = v22;
        *&v4[8 * v21 + 32] = v23;
        v24 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1E172CD18(0, *(v32 + 2) + 1, 1, v32);
        }

        v25 = v24;
        v26 = *(v24 + 2);
        v33 = v25;
        v27 = *(v25 + 3);
        if (v26 >= v27 >> 1)
        {
          v33 = sub_1E172CD18((v27 > 1), v26 + 1, 1, v33);
        }

        *(v33 + 2) = v26 + 1;
        v28 = &v33[8 * v26];
        v14 = v33;
        *(v28 + 4) = v15;
      }

      while (v13 != v12);
    }

LABEL_39:
  }

  return v4;
}

unint64_t sub_1E184B3F8(unint64_t a1)
{
  v3 = sub_1E184ADBC();
  if (v3 >> 62)
  {
    v4 = sub_1E1AF71CC();

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      v6 = MEMORY[0x1E68FFD80](a1, v4);
LABEL_7:

      if (*(v6 + 16) > 2u)
      {

        v8 = *(v6 + 32);
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v7 = sub_1E1AF74AC();

        if ((v7 & 1) == 0)
        {
          goto LABEL_20;
        }

        v8 = *(v6 + 32);
        if (!v8)
        {
          goto LABEL_20;
        }
      }

      v9 = *(v6 + 24);
      if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
      {
        v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
LABEL_16:
        v11 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
        swift_beginAccess();
        v12 = *(v10 + v11);
        v13 = *(v12 + 16);

        if (v13)
        {

          v14 = sub_1E13018F8(v9, v8);
          v16 = v15;

          if (v16)
          {
            v17 = *(*(v12 + 56) + 8 * v14);

            return v17;
          }

          return 0;
        }

        goto LABEL_20;
      }

      v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
      if (v10)
      {

        goto LABEL_16;
      }

LABEL_20:

      return 0;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 <= a1)
  {
    return 0;
  }

  result = sub_1E184ADBC();
  v4 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(result + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_1E184B68C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo);

  if (!v3)
  {
LABEL_8:
    v4 = 0;
    v5 = *(v0 + v1);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v4 = 1;
  v5 = *(v0 + v1);
  if (v5)
  {
LABEL_7:
    v6 = v5;
    goto LABEL_11;
  }

LABEL_9:
  v6 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v6)
  {
    return v4 != 0;
  }

LABEL_11:
  v7 = *(v6 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork);

  if (v7)
  {

    if (*(v0 + v1))
    {
      v8 = *(v0 + v1);
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
      if (!v8)
      {
        return (v4 & 1) != 0;
      }
    }

    v9 = *(v8 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay);

    if (v9)
    {

      return 1;
    }

    return (v4 & 1) != 0;
  }

  return v4 != 0;
}

void sub_1E184B830(char *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      v4 = 3;
      goto LABEL_6;
    }
  }

  v4 = *(v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle);

LABEL_6:
  *a1 = v4;
}

uint64_t sub_1E184B8B4()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 2;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_hasDarkUserInterfaceStyle);

  return v2;
}

void *sub_1E184B944(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      return 0;
    }

    v3 = a1;

    a1 = v3;
  }

  v4 = *(v2 + *a1);
  v5 = v4;

  return v4;
}

uint64_t sub_1E184B9E4()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  v2 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    v3 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
  }

  v4 = *(v1 + *v3);
  if (!v4)
  {

LABEL_13:

    v4 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_10;
    }

LABEL_14:
    v5 = sub_1E1AF71CC();
    goto LABEL_11;
  }

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

LABEL_10:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  return v5;
}

uint64_t sub_1E184BAF0()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_1E184BB70@<X0>(uint64_t a1@<X8>)
{
  if (sub_1E1AF74AC())
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_1E184ADBC();
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E68FFD80](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        if (*(v7 + 16) <= 1u && *(v7 + 16))
        {

LABEL_18:

          MEMORY[0x1E68F8EA0](0, v6);
          v2 = 0;
          goto LABEL_19;
        }

        v8 = sub_1E1AF74AC();

        if (v8)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_15:

    v2 = 1;
  }

LABEL_19:
  v10 = sub_1E1AF01FC();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v2, 1, v10);
}

uint64_t sub_1E184BDC0()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
LABEL_5:

    sub_1E184D390(v1);
    v3 = v2;

    return v3;
  }

  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v1)
  {

    goto LABEL_5;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1E184BE38()
{
  if ((sub_1E1AF74AC() & 1) == 0)
  {
    v0 = sub_1E184ADBC();
    v1 = v0;
    if (v0 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1E68FFD80](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        if (*(v4 + 16) > 1u && *(v4 + 16) != 3)
        {

LABEL_19:

          return v3;
        }

        v5 = sub_1E1AF74AC();

        if (v5)
        {
          goto LABEL_19;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_14:
  }

  return 0;
}

uint64_t sub_1E184C028(uint64_t a1)
{
  v2 = sub_1E184ADBC();
  v3 = sub_1E183BAE0(a1, v2);

  return v3;
}

uint64_t sub_1E184C07C(unint64_t a1)
{
  result = sub_1E184ADBC();
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E68FFD80](a1, result);

    v5 = *(v7 + 16);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = *(result + 8 * a1 + 32);

  v5 = *(v4 + 16);

LABEL_5:
  if ((v5 - 2) < 2)
  {
    return 0;
  }

  if (v5)
  {
    if (!*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
    {
      if (!*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct))
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    v6 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
    swift_beginAccess();
    return *(v1 + v6);
  }
}

uint64_t sub_1E184C1A8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) + 40);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      goto LABEL_10;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      return 0;
    }
  }

  v2 = *(v3 + 232);

  if (!v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (v4)
    {
      v2 = *(v4 + 232);
LABEL_10:

      return v2;
    }

    return 0;
  }

  return v2;
}

double sub_1E184C264(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct;
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v5)
    {
      return result;
    }
  }

  v6 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v1 + v6))
  {

    goto LABEL_7;
  }

  v9 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v9)
  {
    v10 = (v9 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
    if (v10[3])
    {

      goto LABEL_13;
    }

    v109 = v5;
    v111 = v3;
    v106 = a1;
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[2];
    v23 = v10[4];
    v24 = v10[5];
    v25 = v10[6];
    if (!v4)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v109 = v5;
    v111 = v3;
    v106 = a1;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (!v4)
    {
LABEL_49:
      sub_1E147A814(v20, v21, v22, 0, v23, v24, v25);
      a1 = v106;
      v5 = v109;
      v3 = v111;
LABEL_7:
      v7 = *(*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) + 40);
      if (v7)
      {
        v8 = *(v7 + 24);
        if (v8)
        {

LABEL_18:
          if (*(v7 + 32) <= 1u)
          {
            v12 = sub_1E1AF74AC();

            if ((v12 & 1) == 0)
            {

              v13 = 0;
              goto LABEL_31;
            }

LABEL_23:
            v14 = *(v8 + 121);

            if (v14 == 1)
            {
              v15 = *(v8 + 72);

              v16._object = 0x80000001E1B79500;
              v16._countAndFlagsBits = 0xD000000000000021;
              v17._countAndFlagsBits = 0;
              v17._object = 0xE000000000000000;
              v18 = localizedString(_:comment:)(v16, v17);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v115[0] = v15;
              sub_1E159C100(v18._countAndFlagsBits, v18._object, 0, isUniquelyReferenced_nonNull_native);
              v13 = 1;
              goto LABEL_32;
            }

            v13 = 1;
LABEL_31:
            v15 = *(v8 + 72);

LABEL_32:
            v112 = v15;
            if (*(v1 + v6))
            {

              if (((*(v8 + 16) & 0xFE) != 2) | a1 & 1)
              {
                v38 = 3;
              }

              else
              {
                v38 = 8;
              }

              v110 = v38;
LABEL_59:
              v57 = 5;
              goto LABEL_60;
            }

            v39 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
            if (v39)
            {
              v40 = (v39 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
              if (v40[3])
              {
LABEL_55:

                if (((*(v8 + 16) & 0xFE) != 2) | a1 & 1)
                {
                  v60 = 3;
                }

                else
                {
                  v60 = 8;
                }

                v110 = v60;
                if (v13)
                {
                  goto LABEL_59;
                }

LABEL_47:
                v57 = *(v8 + 96);
LABEL_60:
                v108 = v57;

                v102 = *(v8 + 16);
                v61 = *(v8 + 32);
                v62 = *(v8 + 48);
                v96 = *(v8 + 40);
                v99 = *(v8 + 24);
                v63 = *(v8 + 64);
                v90 = *(v8 + 56);
                v64 = *(v8 + 80);
                v65 = *(v8 + 88);
                v66 = *(v8 + 104);
                v67 = *(v8 + 112);
                v82 = *(v8 + 121);
                v83 = *(v8 + 120);
                v80 = *(v8 + 123);
                v81 = *(v8 + 122);
                v79 = *(v8 + 124);
                v88 = *(v8 + 126);
                v86 = *(v8 + 128);
                v84 = *(v8 + 136);
                v113 = 0u;
                v114 = 0u;
                sub_1E134FD1C(v8 + 144, v115, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v93 = v63;

                v105 = v61;

                v68 = v62;

                sub_1E139D580(v66, v67);
                v69 = *(v8 + 184);
                v70 = *(v8 + 200);
                v75 = *(v8 + 192);
                v76 = *(v8 + 176);
                v71 = *(v8 + 224);
                v78 = *(v8 + 216);
                v77 = *(v8 + 232);
                v72 = *(v8 + 240);

                type metadata accessor for OfferDisplayProperties();
                v73 = swift_allocObject();
                *(v73 + 16) = v102;
                *(v73 + 24) = v99;
                *(v73 + 32) = v105;
                *(v73 + 40) = v96;
                *(v73 + 48) = v68;
                *(v73 + 56) = v90;
                *(v73 + 64) = v93;
                *(v73 + 72) = v112;
                *(v73 + 80) = v64;
                *(v73 + 88) = v65;
                *(v73 + 96) = v108;
                *(v73 + 97) = v110;
                *(v73 + 104) = v66;
                *(v73 + 112) = v67;
                *(v73 + 120) = v83;
                *(v73 + 121) = v82;
                *(v73 + 122) = v81;
                *(v73 + 123) = v80;
                *(v73 + 124) = v79;
                *(v73 + 125) = 0;
                *(v73 + 126) = v88;
                *(v73 + 128) = v86;
                *(v73 + 136) = v84;
                result = *v115;
                v74 = v115[1];
                *(v73 + 144) = v115[0];
                *(v73 + 160) = v74;
                *(v73 + 176) = v76;
                *(v73 + 184) = v69;
                *(v73 + 192) = v75;
                *(v73 + 200) = v70;
                *(v73 + 208) = 0;
                *(v73 + 216) = v78;
                *(v73 + 224) = v71;
                *(v73 + 232) = v77;
                *(v73 + 240) = v72;
                return result;
              }

              v59 = v3;
              v42 = *v40;
              v43 = v40[1];
              v44 = v40[2];
              v45 = v40[4];
              v46 = v40[5];
              v47 = v40[6];
              v48 = *(v1 + v59);
              if (!v48)
              {
LABEL_54:
                sub_1E147A814(v42, v43, v44, 0, v45, v46, v47);
                goto LABEL_55;
              }
            }

            else
            {
              v41 = v3;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = *(v1 + v41);
              if (!v48)
              {
                goto LABEL_54;
              }
            }

            v104 = v13;
            v107 = a1;
            v49 = (v48 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
            v50 = v49[3];
            v51 = v49[5];
            v52 = v49[6];
            v98 = v49[1];
            v101 = *v49;
            v53 = v44;
            v92 = v49[4];
            v95 = v49[2];
            v54 = v45;
            v55 = v46;
            sub_1E1475BB8(*v49, v98, v95, v50, v92, v51, v52);
            sub_1E147A814(v42, v43, v53, 0, v54, v55, v47);

            if (v50)
            {
              sub_1E147A814(v101, v98, v95, v50, v92, v51, v52);
            }

            if (((*(v8 + 16) & 0xFE) != 2) | v107 & 1)
            {
              v56 = 3;
            }

            else
            {
              v56 = 8;
            }

            v110 = v56;
            if (v104)
            {
              goto LABEL_59;
            }

            goto LABEL_47;
          }

          if (*(v7 + 32) == 2)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_23;
          }

LABEL_25:
          v13 = 0;
          goto LABEL_31;
        }
      }

      v8 = *(v5 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties);
      if (v8 && (a1 & 1) != 0 || (v8 = *(v5 + 240)) != 0 || (v58 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct)) != 0 && (v8 = *(v58 + 240)) != 0)
      {

        if (!v7)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

LABEL_13:

      return result;
    }
  }

  v26 = *(v4 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
  v27 = *(v4 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
  v29 = *(v4 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
  v28 = *(v4 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
  v30 = *(v4 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 32);
  v31 = *(v4 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 40);
  v32 = *(v4 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 48);
  v91 = v20;
  v94 = v22;
  v33 = v21;
  v97 = v23;
  v100 = v24;
  v103 = v25;

  v87 = v29;
  v89 = v26;
  v34 = v26;
  v35 = v27;
  v85 = v30;
  v36 = v30;
  v37 = v31;
  sub_1E1475BB8(v34, v27, v29, v28, v36, v31, v32);
  sub_1E147A814(v91, v33, v94, 0, v97, v100, v103);
  a1 = v106;
  v5 = v109;
  v3 = v111;
  if (!v28)
  {
    goto LABEL_7;
  }

  return sub_1E147A814(v89, v35, v87, v28, v85, v37, v32);
}

void sub_1E184C9E0(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1E184ADBC();
  v6 = sub_1E1AF019C();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v5 + 8 * v6 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_27;
  }

  v7 = MEMORY[0x1E68FFD80](v6, v5);
LABEL_5:

  if (*(v7 + 16) > 1u)
  {
    if (*(v7 + 16) != 2)
    {
      v8 = sub_1E1AF019C();
      v9 = sub_1E184B3F8(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(*(v9 + 24) + 16);
        if (!v11)
        {
          sub_1E134FD1C(v9 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, v4, &unk_1ECEB4B60, &unk_1E1B02620);
          v12 = sub_1E1AEFCCC();
          if ((*(*(v12 - 8) + 48))(v4, 1, v12) != 1)
          {

            sub_1E1308058(v4, &unk_1ECEB4B60, &unk_1E1B02620);
            v17 = *(v10 + 16);

            *a1 = v17;
            *(a1 + 41) = 3;
            return;
          }

          sub_1E1308058(v4, &unk_1ECEB4B60, &unk_1E1B02620);
          v11 = *(*(v10 + 24) + 16);
        }

        if (sub_1E1AF018C() < v11)
        {
          v13 = *(v10 + 24);

          v14 = sub_1E1AF018C();
          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 < *(v13 + 16))
            {
              sub_1E1300B24(v13 + 40 * v14 + 32, a1);

              v15 = *(v10 + 16);

              *(a1 + 40) = v15;
              *(a1 + 41) = 2;
              return;
            }

            goto LABEL_28;
          }

LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }
      }
    }

LABEL_18:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -256;
    return;
  }

  if (!*(v7 + 16))
  {

    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 41) = 4;
    return;
  }

  v16 = sub_1E1847738();

  if (!v16)
  {
    goto LABEL_18;
  }

  *a1 = v16;
  *(a1 + 41) = 0;
}

uint64_t sub_1E184CCBC(unint64_t a1)
{
  result = sub_1E184ADBC();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x1E68FFD80](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_1E184B3F8(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_1E184B3F8(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_1E184CDF0(unint64_t a1)
{
  result = sub_1E184ADBC();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x1E68FFD80](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_1E184B3F8(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_1E184B3F8(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_1E184CF18(unint64_t a1)
{
  v5 = sub_1E184ADBC();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v6 = *(v5 + 8 * a1 + 32);

      v7 = *(v6 + 16);

      if (v7 != 2)
      {
        if (v7 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_14:
      if (ProductPresenter.numberOfNonShelfRows(for:)(a1) < 1)
      {
        return 0;
      }

      v3 = a1 - 1;
      if (a1 < 1)
      {
LABEL_20:
        if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
        {
          v21 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
        }

        else
        {
          v21 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
          if (!v21)
          {
            return 0;
          }
        }

        v22 = *(v21 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);

        return v22;
      }

      result = sub_1E184ADBC();
      v2 = result;
      if ((result & 0xC000000000000001) == 0)
      {
        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
        {
          __break(1u);
          return result;
        }

        v15 = *(result + 8 * v3 + 32);

LABEL_19:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E1B07AD0;
        type metadata accessor for ProductPageSection();
        v17 = swift_allocObject();
        *(v17 + 16) = 1;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(inited + 32) = v17;
        v18 = swift_allocObject();
        *(v18 + 16) = 3;
        *(v18 + 24) = 0xD000000000000012;
        *(v18 + 32) = 0x80000001E1B580F0;
        *(inited + 40) = v18;
        v19 = swift_allocObject();
        *(v19 + 16) = 3;
        *(v19 + 24) = 0xD000000000000011;
        *(v19 + 32) = 0x80000001E1B580D0;
        *(inited + 48) = v19;
        v24 = v15;
        MEMORY[0x1EEE9AC00](v19);
        v23[2] = &v24;
        v20 = sub_1E14F202C(sub_1E185148C, v23, inited);

        if (v20)
        {
          return 0;
        }

        goto LABEL_20;
      }

LABEL_29:
      v15 = MEMORY[0x1E68FFD80](v3, v2);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_29;
  }

  v13 = MEMORY[0x1E68FFD80](a1, v5);

  v14 = *(v13 + 16);
  swift_unknownObjectRelease();
  if (v14 != 3)
  {
    if (v14 != 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

LABEL_6:
  result = sub_1E184B3F8(a1);
  if (!result)
  {
    return result;
  }

  v9 = *(result + 24);

  v10 = *(v9 + 16);

  if (v10)
  {
    result = sub_1E184B3F8(a1);
    if (!result)
    {
      return result;
    }

    v11 = *(result + 40);
    if (v11)
    {
      v12 = *(v11 + 72);

      return v12;
    }
  }

  return 0;
}

uint64_t sub_1E184D268(unint64_t a1)
{
  result = sub_1E184ADBC();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x1E68FFD80](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_1E184B3F8(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_1E184B3F8(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 88);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

void sub_1E184D390(uint64_t a1)
{
  v2 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges;
  v3 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v4 || ((v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct)) != 0 ? (v6 = v5 == a1) : (v6 = 0), !v6))
  {

    return;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
  {

    v9 = -i;
    v10 = 4;
    v24 = v7;
LABEL_10:
    if (v9 + v10 == 4)
    {

      return;
    }

    v11 = v10 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v11 < *(v7 + 16))
    {
      v12 = *(v3 + 8 * v10);

      goto LABEL_14;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v12 = MEMORY[0x1E68FFD80](v10 - 4, v3);
LABEL_14:
  switch(*(v12 + 16))
  {
    case 2:

      goto LABEL_22;
    default:
      v7 = sub_1E1AF74AC();

      if ((v7 & 1) == 0)
      {
        ++v10;
        v7 = v24;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_47;
        }

        goto LABEL_10;
      }

LABEL_22:
      v13 = *(v4 + *v2);
      v22 = *v2;
      v23 = v4;
      if (v13 >> 62)
      {
        v14 = sub_1E1AF71CC();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = -v14;
      v15 = 4;
      while (2)
      {
        if (v4 + v15 == 4)
        {

          return;
        }

        v16 = v15 - 4;
        if ((v13 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x1E68FFD80](v15 - 4, v13);
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v2 = *(v13 + 8 * v15);
        }

        switch(*(v2 + 16))
        {
          case 2:

            goto LABEL_36;
          default:
            v7 = sub_1E1AF74AC();

            if ((v7 & 1) == 0)
            {
              ++v15;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_49;
              }

              continue;
            }

LABEL_36:

            v17 = *(v23 + v22);
            if ((v17 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1E68FFD80](v15 - 4);
              goto LABEL_39;
            }

            if (v16 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v18 = *(v17 + 8 * v15);

LABEL_39:
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (v3 >> 62 || !isUniquelyReferenced_nonNull_bridgeObject)
              {
                v21 = sub_1E14E7234();

                v20 = v21 & 0xFFFFFFFFFFFFFF8;
              }

              else
              {

                v20 = v24;
              }

              if (v11 < *(v20 + 16))
              {
                *(v20 + 8 * v10) = v18;

                return;
              }

              __break(1u);
            }

            __break(1u);
            return;
        }
      }
  }
}

uint64_t sub_1E184DA18(unint64_t a1)
{
  result = sub_1E184ADBC();
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E68FFD80](a1, result);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v3 = *(result + 8 * a1 + 32);

LABEL_5:

    return v3;
  }

  __break(1u);
  return result;
}

double sub_1E184DA9C(char *a1)
{
  v2 = *a1;
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v3)
    {
      return dbl_1E1B391E0[v2];
    }
  }

  v4 = *(v3 + 48);

  if (v4)
  {
  }

  return dbl_1E1B391E0[v2];
}

void sub_1E184DB80(uint64_t a1)
{
  v2 = sub_1E184ADBC();
  if (v2 >> 62)
  {
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = __OFADD__(a1, 1);
  v5 = a1 + 1;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 < v3)
  {
    if (sub_1E184B3F8(v5))
    {

      sub_1E1845CCC(v5, &v6);
    }
  }
}

double sub_1E184DC30()
{
  v1 = sub_1E1AF01FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0xEB0000000073746FLL;
  if (sub_1E1AF74AC())
  {
    return result;
  }

  v26 = v1;
  v6 = sub_1E184ADBC();
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_44:
    v8 = sub_1E1AF71CC();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_19:

LABEL_21:

    return result;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_5:
  v25 = v0;
  v9 = 0;
  v0 = v4;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E68FFD80](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    if (*(v10 + 16) > 1u)
    {
      break;
    }

    if (*(v10 + 16))
    {
      v4 = 0xE900000000000070;
    }

    else
    {
      v4 = 0xEF74736575716552;
    }

LABEL_16:
    v11 = sub_1E1AF74AC();

    if (v11)
    {
      goto LABEL_24;
    }

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_19;
    }
  }

  if (*(v10 + 16) == 3)
  {
    v4 = 0xE500000000000000;
    goto LABEL_16;
  }

LABEL_24:

  v13 = v25;
  v14 = v26;
  if (*&v25[OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct])
  {
    v15 = *&v25[OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct];
  }

  else
  {
    v15 = *&v25[OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct];
    if (!v15)
    {
      return result;
    }
  }

  v16 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  swift_beginAccess();
  v17 = *(v15 + v16);

  if (v17 >> 62)
  {
    v7 = sub_1E1AF71CC();
  }

  else
  {
    v7 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= 1)
  {
    v13[OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isMediaExpanded] = 1;
    v18 = MEMORY[0x1E69E7CC0];
    if (v7 != 1)
    {
      v28[0] = MEMORY[0x1E69E7CC0];
      sub_1E135CAC4(0, v7 - 1, 0);
      v0 = v27;
      v18 = v28[0];
      v4 = 1;
      while (1)
      {
        MEMORY[0x1E68F8EA0](v4, v9);
        v28[0] = v18;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1E135CAC4((v19 > 1), v20 + 1, 1);
          v0 = v27;
          v18 = v28[0];
        }

        *(v18 + 16) = v20 + 1;
        (*(v2 + 32))(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v0, v14);
        if (v7 == v4)
        {
          goto LABEL_42;
        }

        if (v7 == ++v4)
        {
          v13 = v25;
          break;
        }
      }
    }

    v21 = &v13[OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view];
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_21;
    }

    v22 = *(v21 + 1);
    ObjectType = swift_getObjectType();
    (*(v22 + 40))(v18, ObjectType, v22);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E184E0CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  if (v1 && *(v1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction))
  {
    v2 = v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      memset(v8, 0, sizeof(v8));
      v5 = *(*(v3 + 16) + 8);
      v6 = *(v5 + 8);

      v6(v7, v8, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_1E1308058(v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    }
  }
}

double sub_1E184E1C0(uint64_t a1)
{
  sub_1E1300B24(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA230, &qword_1E1B39168);
  type metadata accessor for ProductPage(0);
  if (swift_dynamicCast())
  {
    v3 = v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      swift_getObjectType();
      sub_1E1475F1C();
      (*(*(v4 + 16) + 32))();

      swift_unknownObjectRelease();
    }

    ProductPresenter.reloadTopLockup()();
  }

  return result;
}

double sub_1E184E2D0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v3)
  {
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    v11 = 0;
LABEL_7:
    v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
      v15 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
      v17 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
      v16 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
      v20 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 40);
      v21 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 32);
      v18 = v9;
      v19 = *(v13 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 48);
      sub_1E1475BB8(v14, v15, v17, v16, v21, v20, v19);
      result = sub_1E147A814(v6, v5, v8, 0, v10, v18, v11);
      *a1 = v14;
      a1[1] = v15;
      a1[2] = v17;
      a1[3] = v16;
      a1[4] = v21;
      a1[5] = v20;
      a1[6] = v19;
    }

    else
    {
      sub_1E147A814(v6, v5, v8, 0, v10, v9, v11);
      a1[6] = 0;
      result = 0.0;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
    }

    return result;
  }

  v4 = (v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
  v6 = *(v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
  v5 = *(v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
  v8 = *(v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
  v7 = *(v3 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
  v10 = v4[4];
  v9 = v4[5];
  v11 = v4[6];
  if (!v7)
  {
    goto LABEL_7;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = v9;
  a1[6] = v11;

  return result;
}

uint64_t sub_1E184E468()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1E184E4AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    *(v1 + v2) = 1;
    v4 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
    if (sub_1E1AF74AC())
    {
      goto LABEL_22;
    }

    v5 = sub_1E184ADBC();
    v6 = v5;
    if (v5 >> 62)
    {
LABEL_20:
      v7 = sub_1E1AF71CC();
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v4 = (v6 & 0xC000000000000001);
        while (1)
        {
          if (v4)
          {
            v9 = MEMORY[0x1E68FFD80](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          if (!*(v9 + 16))
          {
            break;
          }

          v10 = sub_1E1AF74AC();

          if (v10)
          {
            goto LABEL_16;
          }

          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          ++v8;
          if (v11 == v7)
          {

            v4 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
            goto LABEL_22;
          }
        }

LABEL_16:

        v4 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
        v12 = v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 8);
          ObjectType = swift_getObjectType();
          (*(v13 + 24))(v8, ObjectType, v13);
          swift_unknownObjectRelease();
        }

LABEL_22:
        ProductPresenter.reloadTopLockup()();
        v15 = v1 + v4[430];
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return result;
        }

        v16 = *(v15 + 8);
        if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
        {
          v17 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
        }

        else
        {
          v17 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
          if (!v17)
          {
            v18 = 0;
            goto LABEL_28;
          }
        }

        v18 = *(v17 + 232);

LABEL_28:
        v19 = swift_getObjectType();
        v20 = sub_1E184C264(1);
        (*(v16 + 56))(v18, v21, v19, v16, v20);
        swift_unknownObjectRelease();

        return result;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_22;
  }

  return result;
}

void sub_1E184E820()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 0;
    if ((sub_1E1AF74AC() & 1) == 0)
    {
      v12 = v0;
      v2 = sub_1E184ADBC();
      v3 = v2;
      if (v2 >> 62)
      {
LABEL_22:
        v4 = sub_1E1AF71CC();
        v0 = v12;
        if (v4)
        {
LABEL_5:
          v5 = 0;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x1E68FFD80](v5, v3);
            }

            else
            {
              if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v6 = *(v3 + 8 * v5 + 32);
            }

            if (!*(v6 + 16))
            {
              break;
            }

            v7 = sub_1E1AF74AC();

            if (v7)
            {
              goto LABEL_16;
            }

            v8 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            ++v5;
            if (v8 == v4)
            {
              goto LABEL_15;
            }
          }

LABEL_16:

          v9 = v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v9 + 8);
            ObjectType = swift_getObjectType();
            (*(v10 + 24))(v5, ObjectType, v10);
            swift_unknownObjectRelease();
          }

          goto LABEL_18;
        }
      }

      else
      {
        v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_5;
        }
      }

LABEL_15:
    }

LABEL_18:
    ProductPresenter.reloadTopLockup()();
  }
}

uint64_t sub_1E184EB00()
{
  v51 = v0;
  v1 = v0[10].i64[0];
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    if (!v2)
    {
      v3 = 0;
      v5 = (v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId);
      v8 = (v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
      v7 = *v8;
      goto LABEL_13;
    }
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = (v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId);
  v8 = (v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
  v7 = *v8;

  if (!v4)
  {
LABEL_13:
    if (!v7)
    {
      goto LABEL_55;
    }

    v11 = 0;
    v10 = 1;
    goto LABEL_15;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = v4;
LABEL_15:

    v12 = *v8;
    if (!*v8)
    {
      if (v10)
      {
        goto LABEL_54;
      }

      goto LABEL_35;
    }

    v13 = *v5;
    if (v10)
    {

      v14 = 1;
      goto LABEL_30;
    }

    v4 = v11;
LABEL_24:
    if (v13 == v3 && v12 == v11)
    {
    }

    else
    {
      v16 = sub_1E1AF74AC();

      if ((v16 & 1) == 0)
      {
        v14 = 0;
LABEL_30:
        v47 = v14;
        v17 = v0[10].i64[0];
        v18 = *(v17 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);
        ObjectType = swift_getObjectType();
        v49 = v13;
        v50 = v12;
        (*(v18 + 56))(&v49, ObjectType, v18);
        v21 = v20;

        v22 = swift_getObjectType();
        (*(v21 + 80))(v17, v22, v21);
        swift_unknownObjectRelease();
        if (v47)
        {
          goto LABEL_54;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_36;
  }

  v9 = v3 == v6 && v7 == v4;
  if (v9 || (sub_1E1AF74AC() & 1) != 0)
  {
    goto LABEL_55;
  }

  v12 = *v8;
  if (*v8)
  {
    v13 = *v5;
    v11 = v4;
    goto LABEL_24;
  }

  v11 = v4;
LABEL_35:
  v4 = v11;
LABEL_36:
  v0[12].i64[0] = v8;
  v0[12].i64[1] = v4;
  v0[11].i64[0] = v11;
  v0[11].i64[1] = v5;
  v0[10].i64[1] = v3;
  if (*v8)
  {
    if (v3 == *v5 && v11 == *v8)
    {

LABEL_53:

LABEL_54:
      *v5 = v3;
      *v8 = v11;
LABEL_55:

      v38 = v0->i64[1];

      return v38();
    }

    v24 = sub_1E1AF74AC();

    if (v24)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v25 = *(v0[10].i64[0] + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);
  v26 = swift_getObjectType();
  v49 = v3;
  v50 = v4;
  v27 = (*(v25 + 56))(&v49, v26, v25);
  v29 = v28;
  v0[13].i64[0] = v27;
  v0[13].i64[1] = v28;
  v30 = swift_getObjectType();
  v0[14].i64[0] = v30;
  (*(v29 + 16))();
  v31 = v0[1].i64[0];
  v32 = v0[4].u64[0];
  v48 = v26;
  if (!(v32 >> 60))
  {
    if (v0[1].i64[0] != 1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v32 >> 60 == 8)
  {
    v34 = v0[2].i64[0];
    v33 = v0[2].i64[1];
    v35 = v0[1].i64[1];
    v36 = v0[3].i64[0] | v0[3].i64[1] | v0[4].i64[1];
    if (v32 != 0x8000000000000000 || v36 | v31 | v33 | v34 | v35)
    {
      if (v32 == 0x8000000000000000 && v31 == 4)
      {
        v37 = v36 | v33 | v34 | v35;
        if (!v37)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_51;
    }

LABEL_59:
    LOBYTE(v37) = 0;
    goto LABEL_61;
  }

LABEL_51:
  sub_1E139CEA8(v0[1].i64);
LABEL_60:
  LOBYTE(v37) = 1;
LABEL_61:
  *(v0[10].i64[0] + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = v37;
  v40 = 1;
  (*(v29 + 40))(1, v30, v29);
  v41 = v0[8].u64[0];
  v42 = v41 >> 60;
  if (v41 >> 60 != 2 && v42 != 7)
  {
    if (v42 != 8 || v0[8].i64[1] || v41 != 0x8000000000000000 || v0[5].i64[0] != 1 || (v43 = vorrq_s8(v0[6], v0[7]), *&vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL)) | v0[5].i64[1]))
    {
      v40 = 0;
    }
  }

  v44 = v0[10].i64[0];
  sub_1E139CEA8(v0[5].i64);
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = v40;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_shouldDisplayBetaBanner) = (*(v29 + 24))(v30, v29) & 1;
  v0[9].i64[0] = v3;
  v0[9].i64[1] = v4;
  v46 = (*(v25 + 104) + **(v25 + 104));
  v45 = swift_task_alloc();
  v0[14].i64[1] = v45;
  *v45 = v0;
  v45[1] = sub_1E184F0E8;

  return v46(v0 + 9, v48, v25);
}

uint64_t sub_1E184F0E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1E184F1E8, 0, 0);
}

uint64_t sub_1E184F1E8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion) = *(v0 + 240);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v8 = *(v2 + 72);

  v8(v4, sub_1E1852F68, v7, v1, v2);

  swift_unknownObjectRelease();
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  **(v0 + 184) = *(v0 + 168);
  *v9 = v10;

  v11 = *(v0 + 8);

  return v11();
}

double sub_1E184F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy;
    swift_beginAccess();
    if (*(v13 + v14) == 1)
    {
      ObjectType = swift_getObjectType();
      (*(a2 + 16))(v26, ObjectType, a2);
      v16 = v29 >> 60;
      if ((v29 >> 60) - 5 < 2 || v16 == 2 || v16 == 7 || v16 == 8 && !v30 && v29 == 0x8000000000000000 && v26[0] == 1 && (v25 = vorrq_s8(v27, v28), !(*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | v26[1])))
      {
        sub_1E184E820();
      }

      sub_1E139CEA8(v26);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E184A21C(a1, a2);
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    if (v18)
    {
    }

    else
    {
      v18 = *(v17 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = v18[2] == a4 && v18[3] == a5;
    if (v19 || (sub_1E1AF74AC() & 1) != 0)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E1842B50(v18);
      }
    }
  }

LABEL_21:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E184A5E4(a1, a2);
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v22 = v20;
    v23 = sub_1E1AF649C();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;
    v24[5] = a1;
    v24[6] = a2;
    swift_unknownObjectRetain();
    sub_1E154AF74(0, 0, v11, &unk_1E1B391A0, v24);
  }

  return result;
}

uint64_t sub_1E184F758(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v2)
    {
      return 0;
    }

    v3 = a1;

    a1 = v3;
  }

  v4 = *(v2 + *a1);

  return v4;
}

uint64_t sub_1E184F81C()
{
  v0 = sub_1E184ADBC();
  if (v0 >> 62)
  {
    v1 = sub_1E1AF71CC();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

BOOL sub_1E184F8B4(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF74736575716552;
  v4 = 0x7975426F546B7361;
  v5 = *(a1 + 16);
  v6 = 0x68736E6565726373;
  v7 = 0xEB0000000073746FLL;
  if (v5 != 2)
  {
    v6 = 0x666C656873;
    v7 = 0xE500000000000000;
  }

  v8 = 0x756B636F4C706F74;
  v9 = 0xE900000000000070;
  if (!*(a1 + 16))
  {
    v8 = 0x7975426F546B7361;
    v9 = 0xEF74736575716552;
  }

  if (*(a1 + 16) <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x68736E6565726373;
  v13 = 0xEB0000000073746FLL;
  if (*(a2 + 16) != 2)
  {
    v12 = 0x666C656873;
    v13 = 0xE500000000000000;
  }

  if (*(a2 + 16))
  {
    v4 = 0x756B636F4C706F74;
    v3 = 0xE900000000000070;
  }

  if (*(a2 + 16) <= 1u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v12;
  }

  if (*(a2 + 16) <= 1u)
  {
    v15 = v3;
  }

  else
  {
    v15 = v13;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_1E1AF74AC();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  result = (v19 | v20) == 0;
  if (v19 && v20)
  {
    if (*(a1 + 24) == *(a2 + 24) && v19 == v20)
    {
      return 1;
    }

    else
    {
      return sub_1E1AF74AC() & 1;
    }
  }

  return result;
}

uint64_t sub_1E184FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
    return sub_1E1308058(&v11, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  sub_1E134FD1C(v4 + 144, &v11, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  if (!*(&v12 + 1))
  {
    return sub_1E1308058(&v11, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  sub_1E1301CF0(&v11, v13);
  v9 = sub_1E184FCD0(a1, a2, a3);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      sub_1E1850298(a1, v13, a2, a3, a4);
    }

    else
    {
      sub_1E1850B18(0, a1, a2, a3, a4);
    }
  }

  else if (v9)
  {
    sub_1E18506D8(a1, v13, a2, a3, a4);
  }

  else
  {
    sub_1E184FE40(a1, v13, a2, a3, a4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1E184FBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + qword_1EE2168A8) + 240);
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
    return sub_1E1308058(&v11, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  sub_1E134FD1C(v4 + 144, &v11, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  if (!*(&v12 + 1))
  {
    return sub_1E1308058(&v11, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  sub_1E1301CF0(&v11, v13);
  v9 = sub_1E184FD88(a1, a2, a3);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      sub_1E18504AC(a1, v13, a2, a3, a4);
    }

    else
    {
      sub_1E1850D1C(0, a1, a2, a3, a4);
    }
  }

  else if (v9)
  {
    sub_1E18508EC(a1, v13, a2, a3, a4);
  }

  else
  {
    sub_1E185006C(a1, v13, a2, a3, a4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1E184FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 121) != 1)
  {
    return 0;
  }

  v5 = Lockup.numberOfPurchasedChildren(using:)(a2, a3);
  if (v6)
  {
    return 3;
  }

  v7 = *(a1 + 304);
  if (!v7)
  {
    return 3;
  }

  if (v7 >> 62)
  {
    v11 = v5;
    v12 = sub_1E1AF71CC();
    v5 = v11;
    v9 = v11 < v12;
    if (v11 == v12)
    {
      return 1;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v5 < v8;
    if (v5 == v8)
    {
      return 1;
    }
  }

  if (!v9 || v5 <= 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E184FD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + qword_1EE2168A8);
  v4 = *(v3 + 240);
  if (!v4 || *(v4 + 121) != 1)
  {
    return 0;
  }

  v5 = Lockup.numberOfPurchasedChildren(using:)(a2, a3);
  if (v6)
  {
    return 3;
  }

  v7 = *(v3 + 304);
  if (!v7)
  {
    return 3;
  }

  if (v7 >> 62)
  {
    v11 = v5;
    v12 = sub_1E1AF71CC();
    v5 = v11;
    v9 = v11 < v12;
    if (v11 == v12)
    {
      return 1;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v5 < v8;
    if (v5 == v8)
    {
      return 1;
    }
  }

  if (!v9 || v5 <= 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E184FE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[3] = type metadata accessor for ProductPage(0);
  v21[4] = &off_1F5C36130;
  v21[0] = a1;
  type metadata accessor for JSIntentDispatcher();
  v10 = *(a5 + 16);
  sub_1E1AF421C();

  sub_1E1AF55EC();
  sub_1E137A5C4(a2, &v20);
  v19[0] = 0xD00000000000001ELL;
  v19[1] = 0x80000001E1B645B0;
  sub_1E1367978(v19, v10, "AppStoreKit/CompleteMyBundleController.swift", 44, 2);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1E1300B24(v21, &v16);
  v12 = swift_allocObject();
  v12[2] = v11;
  sub_1E1308EC0(&v16, (v12 + 3));
  v12[8] = a3;
  v12[9] = a4;
  swift_allocObject();
  swift_weakInit();
  v13 = sub_1E1361A80();
  swift_unknownObjectRetain();

  v14 = sub_1E1AF68EC();
  v17 = v13;
  v18 = MEMORY[0x1E69AB720];
  *&v16 = v14;
  sub_1E1AF57FC();

  sub_1E1521BA4(v19);
  __swift_destroy_boxed_opaque_existential_1(&v16);

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1E185006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[3] = type metadata accessor for ShelfBasedProductPage(0);
  v21[4] = &off_1F5C2EDF0;
  v21[0] = a1;
  type metadata accessor for JSIntentDispatcher();
  v10 = *(a5 + 16);
  sub_1E1AF421C();

  sub_1E1AF55EC();
  sub_1E137A5C4(a2, &v20);
  v19[0] = 0xD00000000000001ELL;
  v19[1] = 0x80000001E1B645B0;
  sub_1E1367978(v19, v10, "AppStoreKit/CompleteMyBundleController.swift", 44, 2);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1E1300B24(v21, &v16);
  v12 = swift_allocObject();
  v12[2] = v11;
  sub_1E1308EC0(&v16, (v12 + 3));
  v12[8] = a3;
  v12[9] = a4;
  swift_allocObject();
  swift_weakInit();
  v13 = sub_1E1361A80();
  swift_unknownObjectRetain();

  v14 = sub_1E1AF68EC();
  v17 = v13;
  v18 = MEMORY[0x1E69AB720];
  *&v16 = v14;
  sub_1E1AF57FC();

  sub_1E1521BA4(v19);
  __swift_destroy_boxed_opaque_existential_1(&v16);

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

double sub_1E1850298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 232) && ((type metadata accessor for OfferConfirmationAction(0), (v9 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(0), (v9 = swift_dynamicCastClass()) != 0)))
  {
    v10 = v9;
    v11 = *(a1 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 1;

    swift_retain_n();
    sub_1E1850B18(v12, a1, a3, a4, a5);
  }

  else
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF549C();

    *(a5 + 40) = 0;
  }

  return result;
}

double sub_1E18504AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + qword_1EE2168A8);
  if (*(v6 + 232) && ((type metadata accessor for OfferConfirmationAction(0), (v10 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(0), (v10 = swift_dynamicCastClass()) != 0)))
  {
    v11 = v10;
    v12 = *(v6 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    *(v13 + 32) = 1;

    swift_retain_n();

    sub_1E1850D1C(v13, a1, a3, a4, a5);
  }

  else
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF549C();

    *(a5 + 40) = 0;
  }

  return result;
}

double sub_1E18506D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 232) && ((type metadata accessor for OfferConfirmationAction(0), (v9 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(0), (v9 = swift_dynamicCastClass()) != 0)))
  {
    v10 = v9;
    v11 = *(a1 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 2;

    swift_retain_n();
    sub_1E1850B18(v12, a1, a3, a4, a5);
  }

  else
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF549C();

    *(a5 + 40) = 0;
  }

  return result;
}

double sub_1E18508EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + qword_1EE2168A8);
  if (*(v6 + 232) && ((type metadata accessor for OfferConfirmationAction(0), (v10 = swift_dynamicCastClass()) != 0) || (type metadata accessor for OfferAction(0), (v10 = swift_dynamicCastClass()) != 0)))
  {
    v11 = v10;
    v12 = *(v6 + 240);
    type metadata accessor for PersonalizedOfferContext();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    *(v13 + 32) = 2;

    swift_retain_n();

    sub_1E1850D1C(v13, a1, a3, a4, a5);
  }

  else
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF549C();

    *(a5 + 40) = 0;
  }

  return result;
}

uint64_t sub_1E1850B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[3] = type metadata accessor for ProductPage(0);
  v22[4] = &off_1F5C36130;
  v22[0] = a2;
  *(a5 + 40) = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a5 + 32);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v22, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    if (*(a1 + 32) <= 1u)
    {
      v11 = sub_1E1AF74AC();

      if ((v11 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

      v12 = *(a2 + 240);
      if (!v12)
      {
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

LABEL_10:
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      v15 = swift_getObjectType();
      v21[0] = v13;
      v21[1] = v14;
      v16 = *(a4 + 56);

      v16(v21, v15, a4);
      v18 = v17;

      v19 = swift_getObjectType();
      v21[0] = 0;
      v21[6] = 0x1000000000000000;
      (*(v18 + 64))(v21, v19, v18);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

    if (*(a1 + 32) == 2)
    {
      swift_bridgeObjectRelease_n();
      v12 = *(a2 + 240);
      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E1850D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[3] = type metadata accessor for ShelfBasedProductPage(0);
  v22[4] = &off_1F5C2EDF0;
  v22[0] = a2;
  *(a5 + 40) = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a5 + 32);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v22, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    if (*(a1 + 32) > 1u)
    {
      if (*(a1 + 32) != 2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v11 = sub_1E1AF74AC();

      if ((v11 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }
    }

    v12 = *(*(a2 + qword_1EE2168A8) + 240);
    if (v12)
    {
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      v15 = swift_getObjectType();
      v21[0] = v13;
      v21[1] = v14;
      v16 = *(a4 + 56);

      v16(v21, v15, a4);
      v18 = v17;

      v19 = swift_getObjectType();
      v21[0] = 0;
      v21[6] = 0x1000000000000000;
      (*(v18 + 64))(v21, v19, v18);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E1850F28(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    goto LABEL_21;
  }

  v4 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v6 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (v7 >> 62)
  {
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  v8 = *(a1 + v4);
  if (v8 >> 62)
  {
    v9 = sub_1E1AF71CC();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = *(a2 + v6);
  if (!(v10 >> 62))
  {
    if (v9 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_21:
    v14 = 0;
    return v14 & 1;
  }

  if (v9 != sub_1E1AF71CC())
  {
    goto LABEL_21;
  }

LABEL_10:
  v11 = *(a1 + v4);
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  result = sub_1E1AF71CC();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v11 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x1E68FFD80](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v13 = *(v11 + 32);
  }

LABEL_25:
  v15 = *(a2 + v6);
  if (v15 >> 62)
  {
    result = sub_1E1AF71CC();
    if (result)
    {
      goto LABEL_27;
    }

LABEL_33:
    if (v13)
    {
      goto LABEL_34;
    }

LABEL_40:
    v14 = 1;
    return v14 & 1;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_27:
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x1E68FFD80](0, v15);

    if (v13)
    {
LABEL_30:
      if (v16)
      {
        v14 = _s11AppStoreKit12ProductMediaC2eeoiySbAC_ACtFZ_0(v13, v16);

LABEL_39:

        return v14 & 1;
      }

LABEL_34:
      v14 = 0;
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);

    if (v13)
    {
      goto LABEL_30;
    }

LABEL_37:
    if (v16)
    {
      v14 = 0;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1E18511B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct) = a1;

  v8 = sub_1E1AF649C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_1E154AF74(0, 0, v6, &unk_1E1B39190, v9);

  v10 = *(v2 + v7);
  if (v10)
  {
    v11 = type metadata accessor for ProductPage(0);
    v12 = &off_1F5C36130;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v18[1] = 0;
    v18[2] = 0;
  }

  v18[0] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v13 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController;
  v14 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController);
  v15 = *(v13 + 8);

  sub_1E1520288(v18, v14, v15);
  return sub_1E1308058(v18, &qword_1ECEB5110, "ܻ\a");
}

unint64_t sub_1E185136C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E185137C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5D8;

  return sub_1E184EAE0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ProductPresenter(uint64_t a1)
{
  result = qword_1EE1F2470;
  if (!qword_1EE1F2470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E18514B8()
{
  result = qword_1ECEBA220;
  if (!qword_1ECEBA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA220);
  }

  return result;
}

unint64_t sub_1E1851510()
{
  result = qword_1ECEBA228;
  if (!qword_1ECEBA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA228);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit11ProductDataO(uint64_t a1)
{
  if ((*(a1 + 41) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 41) & 7;
  }
}

uint64_t sub_1E18515A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E18515DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E1851628(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_1E185171C(uint64_t a1)
{
  result = sub_1E1AEFCCC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t objectdestroy_74Tm()
{
  v1 = sub_1E1AF436C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E1AF3B5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v9 = (v3 + 96) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_1E18526FC(uint64_t a1)
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

  return sub_1E1842E14(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E1852BD8(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2 && *(v2 + 121) == 1)
  {
    v3 = a1;
    v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (v4 && (v5 = *(v4 + 304)) != 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        v8 = sub_1E1AF71CC();
        v3 = a1;
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v8 = *(v6 + 16);
      }
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }

    v10 = *(v3 + 304);
    v11 = v10 == 0;
    if (v10)
    {
      if (v10 >> 62)
      {
        v22 = *(v3 + 304);
        v23 = v8;
        v21 = v7;
        v19 = sub_1E1AF71CC();
        v7 = v21;
        v12 = v19;
        v10 = v22;
        v8 = v23;
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v8 == v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (v7)
    {
      v14 = v11;
    }

    v9 = v14 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v15 && (v16 = *(v15 + 240)) != 0)
  {
    sub_1E134FD1C(v16 + 144, &v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v17 = (*(&v25 + 1) == 0) | v9;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v17 = 1;
  }

  sub_1E1308058(&v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v17 & 1;
}

uint64_t sub_1E1852DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5DC;

  return sub_1E184EAE0(a1, v4, v5, v6);
}

uint64_t objectdestroy_86Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1852EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1852F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1852F74(uint64_t a1)
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

  return sub_1E184A8EC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_65Tm()
{
  v1 = sub_1E1AF3C1C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1E1AF436C();
  v6 = *(v5 - 8);
  v7 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E1853604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, unint64_t, void, void, void, void, void, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(sub_1E1AF3C1C() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_1E1AF436C() - 8);
  return a5(a1, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v5 + ((v13 + 39) & 0xFFFFFFFFFFFFFFF8)), v5 + ((((v13 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v14 + 80) + 8) & ~*(v14 + 80)), a2, a3, a4);
}

uint64_t sub_1E1853770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, void, uint64_t, unint64_t, unint64_t, void, uint64_t, uint64_t))
{
  v7 = *(sub_1E1AF436C() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E1AF3B5C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  return a3(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + 56, v3 + v8, v3 + v11, *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t *TodayCardMedia.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v5 = *v3;
  v79 = v3;
  v74 = v5;
  v6 = sub_1E1AF5A7C();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_1E1AF39DC();
  v77 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v66 - v10;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  v78 = a1;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  v76 = v15;
  if (v26)
  {
    v81 = v25;
    v82 = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v81 = v27;
    v82 = v29;
  }

  sub_1E1AF6F6C();
  v30 = *(v16 + 8);
  v30(v24, v15);
  v31 = v84;
  v32 = v79;
  *(v79 + 2) = v83;
  *(v32 + 3) = v31;
  v32[8] = v85;
  sub_1E1AF46DC();
  v33 = v78;
  sub_1E1AF381C();
  v34 = v77;
  (*(v77 + 16))(v73, v86, v80);
  v35 = v71;
  sub_1E1AF464C();
  v36 = OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics;
  sub_1E134B7C8(v35, v32 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  v37 = v72;
  sub_1E1AF381C();
  v38 = sub_1E1AF37CC();
  v40 = v39;
  v41 = v37;
  v42 = v76;
  v30(v41, v76);
  if (v40)
  {

    v43 = sub_1E1855F98(v38, v40);
    if ((v44 & 1) == 0)
    {
      v58 = v43;

      v57 = v79;
      v79[2] = v58;
      v59 = v75;
      v60 = v78;
      sub_1E1AF381C();
      sub_1E185604C();
      sub_1E1AF36DC();
      v61 = v59;
      v62 = v76;
      v30(v61, v76);
      *(v57 + 24) = v83;
      v63 = v67;
      sub_1E1AF381C();
      v64 = sub_1E1AF370C();
      (*(v77 + 8))(v86, v80);
      v30(v60, v62);
      v30(v63, v62);
      *(v57 + 25) = v64 & 1;
      return v57;
    }

    v75 = v36;
    v45 = v68;
    *v68 = v38;
    v45[1] = v40;
    v45[2] = v74;
    v46 = *MEMORY[0x1E69AB688];
    v47 = v69;
    v48 = v70;
    v73 = *(v69 + 104);
    (v73)(v45, v46, v70);
    sub_1E18561A8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v72 = v30;
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0, &qword_1E1B1A060);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E1B02CC0;
    *(v51 + 32) = swift_allocError();
    (*(v47 + 16))(v52, v45, v48);
    *v50 = 1684957547;
    v50[1] = 0xE400000000000000;
    v50[2] = v74;
    v50[3] = v51;
    (v73)(v50, *MEMORY[0x1E69AB6A0], v48);
    swift_willThrow();
    (*(v77 + 8))(v86, v80);
    (v72)(v78, v76);
    v53 = v45;
    v36 = v75;
    (*(v47 + 8))(v53, v48);
  }

  else
  {
    sub_1E18561A8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    v54 = v70;
    swift_allocError();
    *v55 = 1684957547;
    v56 = v74;
    v55[1] = 0xE400000000000000;
    v55[2] = v56;
    (*(v69 + 104))(v55, *MEMORY[0x1E69AB690], v54);
    swift_willThrow();
    (*(v34 + 8))(v86, v80);
    v30(v33, v42);
  }

  v57 = v79;
  sub_1E134B88C((v79 + 4));
  sub_1E1308058(v57 + v36, &unk_1ECEB1770, &unk_1E1AFED20);
  type metadata accessor for TodayCardMedia(0);
  swift_deallocPartialClassInstance();
  return v57;
}

uint64_t type metadata accessor for TodayCardMedia(uint64_t a1)
{
  result = qword_1EE1DFC80;
  if (!qword_1EE1DFC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayCardMedia.init(id:kind:titleBackingGradient:otdTextStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  sub_1E134FD1C(a1, &v25, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v26 + 1))
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v24[0] = a5;
    v18 = a2;
    v19 = a4;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v24[1] = v17;
    v24[2] = v21;
    a4 = v19;
    a2 = v18;
    a5 = v24[0];
    sub_1E1AF6F6C();
    sub_1E1308058(&v25, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v22 = v29;
  *(v6 + 32) = v28;
  *(v6 + 48) = v22;
  *(v6 + 64) = v30;
  sub_1E134B7C8(a5, v6 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = a2;
  *(v6 + 24) = v16;
  *(v6 + 25) = a4 & 1;
  return v6;
}

uint64_t TodayCardMedia.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t static TodayCardMedia.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v3 = sub_1E1AF5A7C();
  v144 = *(v3 - 8);
  v145 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v137 = (&v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  v141 = v5;
  v142 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v113 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v133 = &v113 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v126 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v125 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v124 = &v113 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v123 = &v113 - v33;
  v34 = sub_1E1AF380C();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v122 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v121 = &v113 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v120 = &v113 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v119 = &v113 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v118 = &v113 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v117 = &v113 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v116 = &v113 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v115 = &v113 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v114 = &v113 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v113 = &v113 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v113 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v113 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v113 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v113 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v113 - v68;
  v140 = a1;
  sub_1E1AF381C();
  v70 = sub_1E1AF37CC();
  v72 = v71;
  v138 = v34;
  v139 = v35;
  (*(v35 + 8))(v69, v34);
  if (v72)
  {
    v73 = v145;
    v74 = v146;
    v75 = v144;

    v76 = sub_1E1855F98(v70, v72);
    if (v77)
    {
      v78 = v137;
      *v137 = v70;
      v78[1] = v72;
      v78[2] = v74;
      v79 = v75;
      v80 = *(v75 + 104);
      v80(v78, *MEMORY[0x1E69AB688], v73);
      sub_1E18561A8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
      swift_allocError();
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0, &qword_1E1B1A060);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1E1B02CC0;
      *(v83 + 32) = swift_allocError();
      (*(v79 + 16))(v84, v78, v73);
      *v82 = 1684957547;
      v82[1] = 0xE400000000000000;
      v82[2] = v146;
      v82[3] = v83;
      v80(v82, *MEMORY[0x1E69AB6A0], v73);
      swift_willThrow();
      return (*(v79 + 8))(v78, v73);
    }

    else
    {
      switch(v76)
      {
        case 0:

          v89 = v114;
          (*(v139 + 16))(v114, v140, v138);
          v90 = v128;
          (*(v142 + 16))(v128, v143, v141);
          type metadata accessor for TodayCardMediaArtwork(0);
          swift_allocObject();
          result = TodayCardMediaArtwork.init(deserializing:using:)(v89, v90);
          break;
        case 1:

          (*(v139 + 16))(v66, v140, v138);
          v102 = v123;
          (*(v142 + 16))(v123, v143, v141);
          type metadata accessor for TodayCardMediaBrandedSingleApp(0);
          swift_allocObject();
          result = TodayCardMediaBrandedSingleApp.init(deserializing:using:)(v66, v102);
          break;
        case 2:

          (*(v139 + 16))(v63, v140, v138);
          v98 = v124;
          (*(v142 + 16))(v124, v143, v141);
          type metadata accessor for TodayCardMediaList(0);
          swift_allocObject();
          result = TodayCardMediaList.init(deserializing:using:)(v63, v98);
          break;
        case 3:

          (*(v139 + 16))(v60, v140, v138);
          v99 = v125;
          (*(v142 + 16))(v125, v143, v141);
          type metadata accessor for TodayCardMediaMultiAppFallback(0);
          swift_allocObject();
          result = TodayCardMediaMultiAppFallback.init(deserializing:using:)(v60, v99);
          break;
        case 4:

          (*(v139 + 16))(v57, v140, v138);
          v93 = v126;
          (*(v142 + 16))(v126, v143, v141);
          type metadata accessor for TodayCardMediaInAppPurchase(0);
          swift_allocObject();
          result = TodayCardMediaInAppPurchase.init(deserializing:using:)(v57, v93);
          break;
        case 5:

          v103 = v113;
          (*(v139 + 16))(v113, v140, v138);
          v104 = v127;
          (*(v142 + 16))(v127, v143, v141);
          type metadata accessor for TodayCardMediaRiver(0);
          swift_allocObject();
          result = TodayCardMediaRiver.init(deserializing:using:)(v103, v104);
          break;
        case 6:

          v107 = v115;
          (*(v139 + 16))(v115, v140, v138);
          v108 = v129;
          (*(v142 + 16))(v129, v143, v141);
          type metadata accessor for TodayCardMediaAppIcon(0);
          swift_allocObject();
          result = TodayCardMediaAppIcon.init(deserializing:using:)(v107, v108);
          break;
        case 7:

          v100 = v116;
          (*(v139 + 16))(v116, v140, v138);
          v101 = v130;
          (*(v142 + 16))(v130, v143, v141);
          type metadata accessor for TodayCardMediaGrid(0);
          swift_allocObject();
          result = TodayCardMediaGrid.init(deserializing:using:)(v100, v101);
          break;
        case 8:

          v111 = v117;
          (*(v139 + 16))(v117, v140, v138);
          v112 = v131;
          (*(v142 + 16))(v131, v143, v141);
          type metadata accessor for TodayCardMediaVideo(0);
          swift_allocObject();
          result = TodayCardMediaVideo.init(deserializing:using:)(v111, v112);
          break;
        case 9:

          v96 = v118;
          (*(v139 + 16))(v118, v140, v138);
          v97 = v132;
          (*(v142 + 16))(v132, v143, v141);
          type metadata accessor for TodayCardMediaHero(0);
          swift_allocObject();
          result = TodayCardMediaHero.init(deserializing:using:)(v96, v97);
          break;
        case 10:

          v109 = v119;
          (*(v139 + 16))(v119, v140, v138);
          v110 = v133;
          (*(v142 + 16))(v133, v143, v141);
          type metadata accessor for TodayCardMediaAppEvent(0);
          swift_allocObject();
          result = TodayCardMediaAppEvent.init(deserializing:using:)(v109, v110);
          break;
        case 11:

          v91 = v120;
          (*(v139 + 16))(v120, v140, v138);
          v92 = v134;
          (*(v142 + 16))(v134, v143, v141);
          type metadata accessor for TodayCardMediaSingleLockup(0);
          swift_allocObject();
          result = TodayCardMediaSingleLockup.init(deserializing:using:)(v91, v92);
          break;
        case 12:

          v94 = v121;
          (*(v139 + 16))(v121, v140, v138);
          v95 = v135;
          (*(v142 + 16))(v135, v143, v141);
          type metadata accessor for TodayCardMediaMediumLockupWithScreenshots(0);
          swift_allocObject();
          result = TodayCardMediaMediumLockupWithScreenshots.init(deserializing:using:)(v94, v95);
          break;
        case 13:

          v105 = v122;
          (*(v139 + 16))(v122, v140, v138);
          v106 = v136;
          (*(v142 + 16))(v136, v143, v141);
          type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion(0);
          swift_allocObject();
          result = TodayCardMediaMediumLockupWithAlignedRegion.init(deserializing:using:)(v105, v106);
          break;
        default:
          v147 = v76;
          result = sub_1E1AF753C();
          __break(1u);
          break;
      }
    }
  }

  else
  {
    sub_1E18561A8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    v86 = v145;
    swift_allocError();
    *v87 = 1684957547;
    v88 = v146;
    v87[1] = 0xE400000000000000;
    v87[2] = v88;
    (*(v144 + 104))(v87, *MEMORY[0x1E69AB690], v86);
    return swift_willThrow();
  }

  return result;
}

uint64_t TodayCardMedia.Kind.description.getter(uint64_t a1)
{
  if (qword_1EE1DFC98 != -1)
  {
LABEL_15:
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v1 = 0;
  v2 = 1 << *(off_1EE1DFCA0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_1EE1DFCA0 + 8);
  v5 = (v2 + 63) >> 6;
  do
  {
    if (!v4)
    {
      while (1)
      {
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v6 >= v5)
        {
          v11 = sub_1E1AF742C();
          MEMORY[0x1E68FECA0](v11);

          MEMORY[0x1E68FECA0](41, 0xE100000000000000);
          return 0x65756C6156776172;
        }

        v4 = *(off_1EE1DFCA0 + v6 + 8);
        ++v1;
        if (v4)
        {
          v1 = v6;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    v6 = v1;
LABEL_11:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = v7 | (v6 << 6);
  }

  while (*(*(off_1EE1DFCA0 + 7) + 8 * v8) != a1);
  v9 = *(*(off_1EE1DFCA0 + 6) + 16 * v8);

  return v9;
}

uint64_t sub_1E1855674()
{
  v0 = sub_1E159E8C8(&unk_1F5C20E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA248, &unk_1E1B39560);
  result = swift_arrayDestroy();
  off_1EE1DFCA0 = v0;
  return result;
}

unint64_t sub_1E18556EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E18560A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void TodayCardMedia.TitleBackingGradient.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1E1AF72FC();

  *a3 = v4 != 0;
}

uint64_t sub_1E1855790()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E18557EC(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

void sub_1E1855834(BOOL *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  *a2 = v3 != 0;
}

uint64_t TodayCardMedia.__allocating_init(id:kind:titleBackingGradient:otdTextStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a3;
  sub_1E134FD1C(a1, &v24, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v25 + 1))
  {
    v16 = v25;
    *(v14 + 32) = v24;
    *(v14 + 48) = v16;
    *(v14 + 64) = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v23[0] = a5;
    v18 = a2;
    v19 = a4;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v23[1] = v17;
    v23[2] = v21;
    a4 = v19;
    a2 = v18;
    a5 = v23[0];
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(a5, v14 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v14 + 16) = a2;
  *(v14 + 24) = v15;
  *(v14 + 25) = a4 & 1;
  return v14;
}

uint64_t TodayCardMedia.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMedia.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayCardMedia.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1855BC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t TodayCardMediaWithArtwork.artwork(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layoutDirection];
  result = (*(a3 + 8))(a2, a3);
  v7 = result >> 62;
  if (v5 != 1)
  {
    if (v7)
    {
      v13 = result;
      v14 = sub_1E1AF71CC();
      result = v13;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(result + 32);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_19:

    return 0;
  }

  v12 = result;
  v8 = sub_1E1AF71CC();
  result = v12;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_4:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
LABEL_22:
    v15 = 0;
LABEL_24:
    v11 = MEMORY[0x1E68FFD80](v15);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v15 = v10;
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 8 * v10 + 32);
LABEL_14:

LABEL_15:

    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t TodayCardMediaWithArtwork.video(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layoutDirection];
  result = (*(a3 + 16))(a2, a3);
  v7 = result >> 62;
  if (v5 != 1)
  {
    if (v7)
    {
      v13 = result;
      v14 = sub_1E1AF71CC();
      result = v13;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(result + 32);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_19:

    return 0;
  }

  v12 = result;
  v8 = sub_1E1AF71CC();
  result = v12;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_4:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
LABEL_22:
    v15 = 0;
LABEL_24:
    v11 = MEMORY[0x1E68FFD80](v15);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v15 = v10;
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 8 * v10 + 32);
LABEL_14:

LABEL_15:

    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t TodayCardMediaWithArtwork.prefetchableArtwork(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = TodayCardMediaWithArtwork.artwork(for:)(a1, a2, a3);
  if (!result)
  {
    result = TodayCardMediaWithArtwork.video(for:)(a1, a2, a3);
    if (result)
    {
      v7 = *(result + OBJC_IVAR____TtC11AppStoreKit5Video_preview);

      return v7;
    }
  }

  return result;
}

uint64_t sub_1E1855F98(uint64_t a1, uint64_t a2)
{
  if (qword_1EE1DFC98 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_1EE1DFCA0;
  if (*(off_1EE1DFCA0 + 2))
  {
    v3 = sub_1E13018F8(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1E185604C()
{
  result = qword_1EE1DFCA8;
  if (!qword_1EE1DFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFCA8);
  }

  return result;
}

unint64_t sub_1E18560A0(unint64_t result)
{
  if (result > 0xD)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E18560B4()
{
  result = qword_1EE1DFC90;
  if (!qword_1EE1DFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFC90);
  }

  return result;
}

unint64_t sub_1E185610C()
{
  result = qword_1ECEBA238;
  if (!qword_1ECEBA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA238);
  }

  return result;
}

uint64_t sub_1E18561A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E185620C(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E1856390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC8];
  v35 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_13:
    v19 = __clz(__rbit64(v8)) | (v10 << 6);
    sub_1E134E724(*(a1 + 48) + 40 * v19, v32);
    v20 = *(*(a1 + 56) + 8 * v19);
    v34 = v20;
    v29 = v32[0];
    v30 = v32[1];
    v31 = v33;
    if (*(v20 + 18))
    {
      v21 = *(v20 + 16);

      if (v21 != 5)
      {

        v22 = v20;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v22 = sub_1E1858F9C(a3);
LABEL_18:
    v23 = *(v4 + 16);
    if (*(v4 + 24) <= v23)
    {
      sub_1E16889E4(v23 + 1, 1);
      v4 = v35;
    }

    v11 = sub_1E1AF6F2C();
    v12 = v4 + 64;
    v13 = -1 << *(v4 + 32);
    v14 = v11 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v4 + 64 + 8 * (v14 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v13) >> 6;
      while (++v15 != v25 || (v24 & 1) == 0)
      {
        v26 = v15 == v25;
        if (v15 == v25)
        {
          v15 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v15);
        if (v27 != -1)
        {
          v16 = __clz(__rbit64(~v27)) + (v15 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_30;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v4 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v8 &= v8 - 1;
    *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v17 = *(v4 + 48) + 40 * v16;
    *v17 = v29;
    *(v17 + 16) = v30;
    *(v17 + 32) = v31;
    *(*(v4 + 56) + 8 * v16) = v22;
    ++*(v4 + 16);
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v18);
    ++v10;
    if (v8)
    {
      v10 = v18;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1E1856620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v48 = sub_1E1AEFCCC();
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v40 - v8;
  v49 = MEMORY[0x1E69E7CC8];
  v58 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v47 = (v7 + 48);
  v41 = v7;
  v45 = (v7 + 32);

  v14 = 0;
  v42 = a1;
  v43 = a1 + 64;
  if (!v12)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v14 << 6);
      sub_1E134E724(*(a1 + 48) + 40 * v17, v56);
      *(&v57 + 1) = *(*(a1 + 56) + 8 * v17);
      v53 = v56[0];
      v54 = v56[1];
      v55 = v57;
      sub_1E134FD1C(*(&v57 + 1) + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, v4, &unk_1ECEB4B60, &unk_1E1B02620);
      v18 = a1;
      v19 = v48;
      if ((*v47)(v4, 1, v48) != 1)
      {
        break;
      }

      sub_1E1308058(&v53, &qword_1ECEB4D38, &qword_1E1B37D10);
      sub_1E1308058(v4, &unk_1ECEB4B60, &unk_1E1B02620);
      a1 = v18;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v20 = *v45;
    v21 = v44;
    (*v45)(v44, v4, v19);
    v50 = v53;
    v51 = v54;
    v52 = v55;
    v22 = v21;
    v23 = v20;
    v20(v46, v22, v19);
    v24 = v49[2];
    if (v49[3] <= v24)
    {

      sub_1E168860C(v24 + 1, 1);
    }

    else
    {
    }

    v25 = v58;
    v26 = sub_1E1AF6F2C();
    v27 = v25 + 64;
    v49 = v25;
    v28 = -1 << *(v25 + 32);
    v29 = v26 & ~v28;
    v30 = v29 >> 6;
    v9 = v43;
    if (((-1 << v29) & ~*(v25 + 64 + 8 * (v29 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v28) >> 6;
      v32 = v48;
      while (++v30 != v34 || (v33 & 1) == 0)
      {
        v35 = v30 == v34;
        if (v30 == v34)
        {
          v30 = 0;
        }

        v33 |= v35;
        v36 = *(v27 + 8 * v30);
        if (v36 != -1)
        {
          v31 = __clz(__rbit64(~v36)) + (v30 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v25 + 64 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v32 = v48;
LABEL_25:
    *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v37 = v49;
    v38 = v49[6] + 40 * v31;
    v39 = v51;
    *v38 = v50;
    *(v38 + 16) = v39;
    *(v38 + 32) = v52;
    v23((v37[7] + *(v41 + 72) * v31), v46, v32);
    ++v37[2];

    a1 = v42;
  }

  while (v12);
LABEL_7:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t ShelfRefreshError.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E1856B6C()
{
  result = qword_1ECEBA250;
  if (!qword_1ECEBA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA250);
  }

  return result;
}

uint64_t sub_1E1856BD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  if (a2)
  {
    v4 = Strong;

    sub_1E18AE578(v5);
    v6 = qword_1EE217318;
    swift_beginAccess();

    sub_1E1856390(v7, v4, a2);
    v9 = v8;

    *(a2 + v6) = v9;

    sub_1E1856D18(a2);
    v10 = *(v4 + qword_1EE1E7268);
    v11 = *(v4 + qword_1EE1E7280);
    v12 = *(v4 + qword_1EE1E7280 + 8);

    swift_unknownObjectRetain();
    sub_1E184FBA0(a2, v11, v12, v10);

    swift_unknownObjectRelease();
  }

  return a2;
}

void sub_1E1856D18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + qword_1EE1E7280 + 8);
  ObjectType = swift_getObjectType();
  v6 = *(a1 + qword_1EE2168A8);
  v7 = *(v6 + 24);
  v20 = *(v6 + 16);
  v21 = v7;
  v8 = *(v4 + 56);
  swift_unknownObjectRetain();

  v8(&v20, ObjectType, v4);
  v10 = v9;
  swift_unknownObjectRelease();

  v11 = swift_getObjectType();
  (*(v10 + 16))(&v20, v11, v10);
  swift_unknownObjectRelease();
  if (!(v26 >> 60))
  {
    if (v20 != 1)
    {
      goto LABEL_11;
    }

LABEL_10:
    v14 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  if (v26 >> 60 == 8)
  {
    v12 = v25 | v27;
    v13 = v23 | v22 | v21;
    if (v26 == 0x8000000000000000 && !(v12 | v20 | v24 | v13))
    {
      goto LABEL_10;
    }

    if (v26 == 0x8000000000000000 && v20 == 4 && !(v12 | v24 | v13))
    {
      goto LABEL_10;
    }
  }

  sub_1E139CEA8(&v20);
LABEL_11:
  v15 = 0;
  v14 = 2;
LABEL_12:
  v16 = *(*a1 + 184);
  swift_beginAccess();
  *(a1 + v16) = v14;
  if (v15)
  {
    v17 = 4;
  }

  else
  {
    v17 = 6;
  }

  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  if (*(v2 + qword_1EE1E7240))
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  *(a1 + v16) = v19;
}

uint64_t sub_1E1856EFC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v42 = *a6;
  v43 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v35 - v8;
  v9 = type metadata accessor for ShelfBasedProductPageIntent(0);
  v40 = *(v9 - 1);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_1E1AEFCCC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a2, v16, &unk_1ECEB4B60, &unk_1E1B02620);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1E1308058(v16, &unk_1ECEB4B60, &unk_1E1B02620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA2A0, &qword_1E1B39760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA2A8, &qword_1E1B39768);
    sub_1E1302CD4(&qword_1ECEBA2B0, &qword_1ECEBA2A8, &qword_1E1B39768, &protocol conformance descriptor for DiffablePageContentPresenter<A>.FetchError);
    swift_allocError();
    *v21 = 0;
    return sub_1E1AF581C();
  }

  else
  {
    v23 = *(v18 + 32);
    v35 = v17;
    v36 = v20;
    v23(v20, v16, v17);
    (*(v18 + 16))(&v13[v9[5]], v20, v17);
    *v13 = 0xD00000000000001BLL;
    *(v13 + 1) = 0x80000001E1B79A40;
    v13[v9[6]] = 0;
    v24 = &v13[v9[7]];
    v25 = v37;
    v26 = v37[1];
    *v24 = *v37;
    *(v24 + 1) = v26;
    *(v24 + 25) = *(v25 + 25);
    sub_1E1AF4C1C();
    sub_1E134FD1C(v25, v45, &qword_1ECEBA2B8, &qword_1E1B39770);

    sub_1E1AF422C();
    sub_1E1AF4BEC();

    v39 = sub_1E1AF4BFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA2A0, &qword_1E1B39760);
    v38 = sub_1E1AF588C();
    v27 = sub_1E1AF649C();
    (*(*(v27 - 8) + 56))(v44, 1, 1, v27);
    v28 = v41;
    sub_1E185E858(v13, v41);
    v29 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v43;
    sub_1E185E8BC(v28, v32 + v29);
    v33 = v38;
    *(v32 + v30) = v39;
    v34 = v32 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = "AppStoreKit/ProductDiffablePageContentPresenter.swift";
    *(v34 + 1) = 53;
    v34[16] = 2;
    *(v32 + v31) = v33;
    *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;

    sub_1E154AF74(0, 0, v44, &unk_1E1B39778, v32);

    sub_1E185EA9C(v13);
    (*(v18 + 8))(v36, v35);
    return v33;
  }
}

void sub_1E1857468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v11 = Strong;
  v12 = *(a1 + qword_1EE2168D0);
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13 <= 1)
    {
      if (v13)
      {
        v14 = 1;
        goto LABEL_11;
      }

LABEL_8:
      v14 = sub_1E1AF74AC();
LABEL_11:

      goto LABEL_12;
    }

    if (v13 == 2)
    {
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_12:
  *(v11 + qword_1EE1E7278) = v14 & 1;
  sub_1E18AE578(a1);
  v15 = sub_1E1857788(a1);
  sub_1E19D90BC(v15);

  *(a5 + 72) = a1;

  sub_1E13C1300();
  if (sub_1E185DFE4(a1, a6))
  {
    v16 = *(v11 + qword_1EE1E7268);
    v17 = *(v11 + qword_1EE1E7280);
    v18 = *(v11 + qword_1EE1E7280 + 8);

    swift_unknownObjectRetain();
    sub_1E184FBA0(a1, v17, v18, v16);
    swift_unknownObjectRelease();
  }

  v19 = qword_1EE217318;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = 1 << *(*(a1 + v19) + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  if (v26)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      sub_1E1856390(v31, v11, a1);
      v33 = v32;

      *(a1 + v19) = v33;

      sub_1E1856D18(a1);

      return;
    }

    v26 = *(v22 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      do
      {
LABEL_22:
        v26 &= v26 - 1;

        sub_1E1857CAC(v30, a7);
      }

      while (v26);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1E1857788(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + qword_1EE2168A8);
  v5 = qword_1EE1E7268;
  v6 = *(*(v1 + qword_1EE1E7268) + 40);
  if (!v6 || (v7 = *(v6 + 16)) == 0)
  {
    v7 = *(v4 + 232);
  }

  v47 = v7;

  v46 = v4;
  v8 = sub_1E1859084(a1, 0);
  v53 = sub_1E1859598(a1, v8);
  v52 = sub_1E1859F5C(a1, v8);
  v9 = *(a1 + qword_1EE216938);
  if (!v9)
  {
    v9 = sub_1E13C17AC();
  }

  v51 = v9;
  v10 = *(v1 + qword_1EE1E72A0);

  sub_1E18AE578(a1);
  v11 = *(a1 + qword_1EE2168D0);
  v12 = *(a1 + qword_1EE216940);
  if (v12)
  {
    v43 = *(v12 + 24);
    v44 = *(v12 + 16);
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v13 = *(a1 + qword_1EE2168B8);
  v42 = *(a1 + qword_1EE2168C0);
  v14 = *(v10 + 160) >> 61;
  if ((v14 - 1) < 3)
  {
    goto LABEL_10;
  }

  v15 = *(v10 + 160) >> 61;
  if (v14)
  {
    if (((*(v2 + qword_1EE1E7270) - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
LABEL_10:

      v15 = v8;
      goto LABEL_14;
    }

    v15 = 0;
  }

LABEL_14:
  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8 == 0;
  }

  v41 = v15;
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v8 + 88);
  }

  v18 = *(a1 + qword_1EE216918);
  v39 = *(a1 + qword_1EE216908 + 8);
  v40 = *(a1 + qword_1EE216908);
  v19 = *(*(v2 + v5) + 40);
  v20 = *(v2 + qword_1EE1E7280);
  v38 = *(v2 + qword_1EE1E7280 + 8);
  v50 = *(a1 + *(*a1 + 200));
  v45 = v19;

  swift_unknownObjectRetain();

  v21 = sub_1E18AC41C();
  v22 = *(v46 + 320);
  v48 = *(v46 + 312);
  v49 = v21;
  type metadata accessor for ProductTopLockup(0);
  v23 = swift_allocObject();
  *(v23 + 216) = 0u;
  *(v23 + 232) = 0u;
  *(v23 + 248) = 0;
  v24 = OBJC_IVAR____TtC11AppStoreKit16ProductTopLockup_impressionMetrics;
  v25 = sub_1E1AF46DC();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  v26 = qword_1EE1F1D28;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_1E134E724(qword_1EE216D48, v23 + 176);
  *(v23 + 16) = v46;
  *(v23 + 24) = v11;
  *(v23 + 32) = v44;
  *(v23 + 40) = v43;
  *(v23 + 48) = v13;
  *(v23 + 56) = v42;
  *(v23 + 64) = v47;
  *(v23 + 72) = v41;
  *(v23 + 80) = v17;
  *(v23 + 120) = v18 != 0;
  if (!v18)
  {
    if (v45)
    {
      if (*(v45 + 32) <= 1u)
      {
        v31 = v20;
        if (*(v45 + 32))
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_37;
        }

LABEL_31:
        v32 = sub_1E1AF74AC();

        if ((v32 & 1) == 0)
        {

          swift_unknownObjectRelease();

LABEL_34:

          countAndFlagsBits = 0;
          v30 = 0;
          v29 = 0;
          object = 1;
          goto LABEL_35;
        }

LABEL_37:
        v34._object = 0x80000001E1B792A0;
        v34._countAndFlagsBits = 0xD000000000000027;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v36 = localizedString(_:comment:)(v34, v35);
        countAndFlagsBits = v36._countAndFlagsBits;
        object = v36._object;
        v30 = sub_1E15314E8(v46, v40, v39, v31, v38);
        v29 = v37;

        swift_unknownObjectRelease();

        goto LABEL_24;
      }

      if (*(v45 + 32) == 2)
      {
        v31 = v20;
        goto LABEL_31;
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  swift_unknownObjectRelease();

  countAndFlagsBits = v18[2];
  object = v18[3];
  v30 = v18[4];
  v29 = v18[5];

LABEL_24:

LABEL_35:
  *(v23 + 88) = countAndFlagsBits;
  *(v23 + 96) = object;
  *(v23 + 104) = v30;
  *(v23 + 112) = v29;
  *(v23 + 57) = v50;
  *(v23 + 144) = v52;
  *(v23 + 152) = v51;
  *(v23 + 128) = v49;
  *(v23 + 136) = v53;
  *(v23 + 160) = v48;
  *(v23 + 168) = v22;
  return v23;
}

void sub_1E1857CAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA270, &qword_1E1B39720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = v9;
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  LOBYTE(v40[0]) = *(a1 + 16);
  if (Shelf.ContentType.rawValue.getter() == 0x42746375646F7270 && v13 == 0xEC00000065676461)
  {
  }

  else
  {
    v14 = sub_1E1AF74AC();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  sub_1E1AEFE9C();
  v32 = *(v8 + 16);
  v33 = v12;
  v32(v6);
  v15 = *(v8 + 56);
  v35 = v7;
  v15(v6, 0, 1, v7);
  v16 = qword_1EE1E7260;
  v17 = v38;
  swift_beginAccess();
  sub_1E185E67C(v6, v17 + v16);
  swift_endAccess();
  v34 = a1;
  v18 = *(a1 + 24);
  v19 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = v18 + 32;
    do
    {
      sub_1E1300B24(v21, v40);
      sub_1E1300B24(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
      type metadata accessor for Badge(0);
      if (swift_dynamicCast())
      {
        v22 = sub_1E185A824(a2);

        v23 = __swift_destroy_boxed_opaque_existential_1(v40);
        if (v22)
        {
          MEMORY[0x1E68FEF20](v23);
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();
          v19 = v41;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v40);
      }

      v21 += 40;
      --v20;
    }

    while (v20);
  }

  v40[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA278, &qword_1E1B39728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA280, &qword_1E1B39730);
  sub_1E1302CD4(&qword_1EE1E34E8, &qword_1ECEBA278, &qword_1E1B39728, MEMORY[0x1E69E6328]);
  sub_1E1302CD4(&qword_1EE1E3648, &qword_1ECEBA288, &qword_1E1B39738, MEMORY[0x1E69AB658]);
  sub_1E1AF53CC();

  v24 = v37;
  v25 = v33;
  v26 = v35;
  (v32)(v37, v33, v35);
  v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v28 = (v36 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v38;
  (*(v8 + 32))(v29 + v27, v24, v26);
  *(v29 + v28) = v34;
  v30 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);

  v31 = sub_1E1AF68EC();
  v40[3] = v30;
  v40[4] = MEMORY[0x1E69AB720];
  v40[0] = v31;
  sub_1E1AF57FC();

  (*(v8 + 8))(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1E18581E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v10 = sub_1E1AF4C0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2828, &unk_1E1B39710);
  v11 = sub_1E1AF588C();
  v12 = sub_1E1AF649C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a1;
  *(v13 + 48) = v10;
  *(v13 + 56) = "AppStoreKit/ProductDiffablePageContentPresenter.swift";
  *(v13 + 64) = 53;
  *(v13 + 72) = 2;
  *(v13 + 80) = v11;
  *(v13 + 88) = v6;

  sub_1E154AF74(0, 0, v9, &unk_1E1B02E58, v13);

  return v11;
}

void sub_1E18583D4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E185E674;
  *(v6 + 24) = v5;
  v8[4] = sub_1E137AFA8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E1551FBC;
  v8[3] = &block_descriptor_80;
  v7 = _Block_copy(v8);

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_1E1858550()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1E7290));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1D3C40));

  sub_1E1308058(v0 + qword_1EE1D3C38, &qword_1ECEBA2C0, &unk_1E1B39780);
  sub_1E1308058(v0 + qword_1EE1E7248, &qword_1ECEBA2C8, &qword_1E1B48430);
  sub_1E1308058(v0 + qword_1EE1E7250, &qword_1ECEBA2C0, &unk_1E1B39780);

  return sub_1E1308058(v0 + qword_1EE1E7260, &qword_1ECEBA270, &qword_1E1B39720);
}

uint64_t sub_1E1858684()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA2C8, &qword_1E1B48430);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA260, &qword_1E1B396C8);
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA2C0, &unk_1E1B39780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA258, &qword_1E1B396C0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = qword_1EE1D3C38;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v19, v12, &qword_1ECEBA2C0, &unk_1E1B39780);
  v30 = *(v14 + 48);
  if (v30(v12, 1, v13) == 1)
  {
    sub_1E1308058(v12, &qword_1ECEBA2C0, &unk_1E1B39780);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);

    sub_1E1AF35AC();

    (*(v14 + 8))(v18, v13);
  }

  v20 = qword_1EE1E7248;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v20, v4, &qword_1ECEBA2C8, &qword_1E1B48430);
  v21 = v31;
  if ((*(v5 + 48))(v4, 1, v31) == 1)
  {
    sub_1E1308058(v4, &qword_1ECEBA2C8, &qword_1E1B48430);
  }

  else
  {
    v22 = v28;
    (*(v5 + 32))(v28, v4, v21);

    sub_1E1AF35AC();

    (*(v5 + 8))(v22, v21);
  }

  v23 = qword_1EE1E7250;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v23, v9, &qword_1ECEBA2C0, &unk_1E1B39780);
  if (v30(v9, 1, v13) == 1)
  {
    sub_1E1308058(v9, &qword_1ECEBA2C0, &unk_1E1B39780);
  }

  else
  {
    v24 = v29;
    (*(v14 + 32))(v29, v9, v13);

    sub_1E1AF35AC();

    (*(v14 + 8))(v24, v13);
  }

  v25 = _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v25 + qword_1EE1E7290));
  __swift_destroy_boxed_opaque_existential_1((v25 + qword_1EE1D3C40));

  sub_1E1308058(v25 + qword_1EE1D3C38, &qword_1ECEBA2C0, &unk_1E1B39780);
  sub_1E1308058(v25 + qword_1EE1E7248, &qword_1ECEBA2C8, &qword_1E1B48430);
  sub_1E1308058(v25 + qword_1EE1E7250, &qword_1ECEBA2C0, &unk_1E1B39780);

  sub_1E1308058(v25 + qword_1EE1E7260, &qword_1ECEBA270, &qword_1E1B39720);
  return v25;
}

uint64_t sub_1E1858C70()
{
  sub_1E1858684();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_1EE1E7230;
  if (!qword_1EE1E7230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1858D10(uint64_t a1)
{
  sub_1E1300690(319, &qword_1EE1E3A20, &qword_1ECEBA258, &qword_1E1B396C0);
  if (v1 <= 0x3F)
  {
    sub_1E1300690(319, &qword_1EE1E3A28, &qword_1ECEBA260, &qword_1E1B396C8);
    if (v2 <= 0x3F)
    {
      sub_1E185C1A4(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1E1858EA0(_BYTE *a1)
{
  v2 = qword_1EE1E7240;
  *(v1 + qword_1EE1E7298) = ((*a1 ^ *(v1 + qword_1EE1E7240)) & 1) == 0;
  v3 = *(v1 + qword_1EE1E9D48);
  if (*(v1 + v2) == 1)
  {
    if (v3)
    {
      v4 = (v3 + *(*v3 + 184));
    }

    else
    {
      v4 = &byte_1ECEB71A8;
    }

    swift_beginAccess();
    v5 = &unk_1E1B39792;
  }

  else
  {
    if (v3)
    {
      v4 = (v3 + *(*v3 + 184));
    }

    else
    {
      v4 = &byte_1ECEB71A8;
    }

    swift_beginAccess();
    v5 = &unk_1E1B3979E;
  }

  sub_1E1994D70(v5[*v4]);
}

uint64_t sub_1E1858F9C(uint64_t a1)
{
  v2 = sub_1E1857788(a1);
  v3 = *(a1 + qword_1EE2168D0);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4 <= 1)
    {
      if (v4)
      {
        v5 = 1;
        goto LABEL_9;
      }

LABEL_6:
      v5 = sub_1E1AF74AC();
LABEL_9:

      goto LABEL_10;
    }

    if (v4 == 2)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_10:
  v6 = sub_1E185D314(v2, v5 & 1);

  return v6;
}

uint64_t sub_1E1859084(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(*(v2 + qword_1EE1E7268) + 40);
  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7)
    {

LABEL_8:
      if (*(v6 + 32) <= 1u)
      {
        v8 = sub_1E1AF74AC();

        if ((v8 & 1) == 0)
        {

          v9 = 0;
          goto LABEL_17;
        }

LABEL_13:
        v10 = *(v7 + 121);

        if (v10 == 1)
        {
          v11 = *(v7 + 72);

          v12._object = 0x80000001E1B79500;
          v12._countAndFlagsBits = 0xD000000000000021;
          v13._countAndFlagsBits = 0;
          v13._object = 0xE000000000000000;
          v14 = localizedString(_:comment:)(v12, v13);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v59[0] = v11;
          sub_1E159C100(v14._countAndFlagsBits, v14._object, 0, isUniquelyReferenced_nonNull_native);
          v56 = v11;
          v9 = 1;
          goto LABEL_18;
        }

        v9 = 1;
LABEL_17:
        v16 = *(v7 + 72);

        v56 = v16;

LABEL_18:
        v17 = *(*(v3 + qword_1EE1E72A0) + 160) >> 61;
        if ((v17 - 1) >= 3)
        {
          if (v17 && (*(v3 + qword_1EE1E7270) & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 1;
        }

        v18 = *(a1 + qword_1EE2168D0);
        if (!v18)
        {
          goto LABEL_33;
        }

        v19 = *(v18 + 16);
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            goto LABEL_33;
          }
        }

        else if (v19)
        {
          swift_bridgeObjectRelease_n();
          if ((a2 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }

        v20 = sub_1E1AF74AC();

        if ((v20 & 1) != 0 && (a2 & 1) == 0)
        {
LABEL_30:
          v55 = 8;
          if ((v9 & 1) == 0)
          {
LABEL_31:
            v21 = *(v7 + 96);
LABEL_35:
            v54 = v21;

            v52 = *(v7 + 16);
            v22 = *(v7 + 32);
            v23 = *(v7 + 48);
            v50 = *(v7 + 40);
            v51 = *(v7 + 24);
            v24 = *(v7 + 64);
            v48 = *(v7 + 56);
            v25 = *(v7 + 80);
            v26 = *(v7 + 88);
            v27 = *(v7 + 104);
            v28 = *(v7 + 112);
            v43 = *(v7 + 121);
            v44 = *(v7 + 120);
            v41 = *(v7 + 123);
            v42 = *(v7 + 122);
            v40 = *(v7 + 124);
            v47 = *(v7 + 126);
            v46 = *(v7 + 128);
            v45 = *(v7 + 136);
            v57 = 0u;
            v58 = 0u;
            sub_1E134FD1C(v7 + 144, v59, &qword_1ECEB2DF0, &unk_1E1B02CE0);
            v49 = v24;

            v53 = v22;

            v29 = v23;

            sub_1E139D580(v27, v28);
            v30 = *(v7 + 184);
            v31 = *(v7 + 200);
            v36 = *(v7 + 192);
            v37 = *(v7 + 176);
            v32 = *(v7 + 224);
            v39 = *(v7 + 216);
            v38 = *(v7 + 232);
            v33 = *(v7 + 240);

            type metadata accessor for OfferDisplayProperties();
            result = swift_allocObject();
            *(result + 16) = v52;
            *(result + 24) = v51;
            *(result + 32) = v53;
            *(result + 40) = v50;
            *(result + 48) = v29;
            *(result + 56) = v48;
            *(result + 64) = v49;
            *(result + 72) = v56;
            *(result + 80) = v25;
            *(result + 88) = v26;
            *(result + 96) = v54;
            *(result + 97) = v55;
            *(result + 104) = v27;
            *(result + 112) = v28;
            *(result + 120) = v44;
            *(result + 121) = v43;
            *(result + 122) = v42;
            *(result + 123) = v41;
            *(result + 124) = v40;
            *(result + 125) = 0;
            *(result + 126) = v47;
            *(result + 128) = v46;
            *(result + 136) = v45;
            v35 = v59[1];
            *(result + 144) = v59[0];
            *(result + 160) = v35;
            *(result + 176) = v37;
            *(result + 184) = v30;
            *(result + 192) = v36;
            *(result + 200) = v31;
            *(result + 208) = 0;
            *(result + 216) = v39;
            *(result + 224) = v32;
            *(result + 232) = v38;
            *(result + 240) = v33;
            return result;
          }

LABEL_34:
          v21 = 5;
          goto LABEL_35;
        }

LABEL_33:
        v55 = 3;
        if ((v9 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }

      if (*(v6 + 32) == 2)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_13;
      }

LABEL_15:
      v9 = 0;
      goto LABEL_17;
    }
  }

  v7 = *(a1 + qword_1EE2168D8);
  if (v7 && (a2 & 1) != 0 || (v7 = *(*(a1 + qword_1EE2168A8) + 240)) != 0)
  {

    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_1E1859598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  countAndFlagsBits = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - v12;
  v14 = (v3 + qword_1EE1D3C40);
  sub_1E1300B24(v3 + qword_1EE1D3C40, &v80);
  __swift_project_boxed_opaque_existential_1Tm(&v80, *(&v81 + 1));
  LOBYTE(v77) = 3;
  v15 = RestrictionsProtocol.doesAllow(_:properties:)(&v77, a2);
  __swift_destroy_boxed_opaque_existential_1(&v80);
  if (v15)
  {
    v16 = *(a1 + qword_1EE2168B0);
    if (!v16)
    {
      return v16;
    }

    v17 = 0;
  }

  else
  {
    v70 = v7;
    v74 = v6;
    v18 = v14[3];
    v19 = v14[4];
    v20 = __swift_project_boxed_opaque_existential_1Tm(v14, v18);
    v21 = *(v18 - 8);
    v22 = MEMORY[0x1EEE9AC00](v20);
    v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = (*(v19 + 40))(v18, v19);
    (*(v21 + 8))(v24, v18);
    v16 = *(a1 + qword_1EE2168B0);
    if (!v16)
    {
      if (v25)
      {
        return 0;
      }

      goto LABEL_15;
    }

    v17 = v25 ^ 1;
    v6 = v74;
    v7 = v70;
  }

  v26 = *(v16 + 96);
  if (v26 == 2)
  {

    return v16;
  }

  if (v26)
  {
    v27 = sub_1E1AF74AC();

    if ((v27 & v17 & 1) == 0)
    {
      return v16;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if ((v17 & 1) == 0)
    {
      return v16;
    }
  }

  v70 = v7;
  v74 = v6;

LABEL_15:
  v28 = v14[3];
  v29 = v14[4];
  v30 = __swift_project_boxed_opaque_existential_1Tm(v14, v28);
  v31 = *(v28 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34, v32);
  LOBYTE(v29) = (*(v29 + 48))(v28, v29);
  (*(v31 + 8))(v34, v28);
  if (v29)
  {
    return 0;
  }

  type metadata accessor for ASKBagContract(0);
  sub_1E1AF416C();
  if (qword_1ECEB1530 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(countAndFlagsBits + 8))(v13, v11);
  if (v80 == 1)
  {
    v35._countAndFlagsBits = 0xD00000000000001DLL;
    v35._object = 0x80000001E1B797A0;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v37 = localizedString(_:comment:)(v35, v36);
    countAndFlagsBits = v37._countAndFlagsBits;
    object = v37._object;
    v38 = v74;
    v39 = v72;
    if (qword_1ECEB0F20 != -1)
    {
      swift_once();
    }

    v68 = qword_1ECEF45A8;
    v40 = sub_1E1AF46DC();
    v80 = 0u;
    v81 = 0u;
    v82 = 0;
    v41 = v71;
    (*(*(v40 - 8) + 56))(v71, 1, 1, v40);
    type metadata accessor for Artwork(0);
    v42 = swift_allocObject();
    *(v42 + 152) = 0u;
    *(v42 + 168) = 0u;
    *(v42 + 184) = 0;
    sub_1E1AEFE9C();
    v43 = sub_1E1AEFE7C();
    v45 = v44;
    v46 = *(v70 + 8);
    v46(v39, v38);
    *&v77 = v43;
    *(&v77 + 1) = v45;
    sub_1E1AF6F6C();
    v74 = v38;
    v47 = v39;
    sub_1E134FD1C(v41, v42 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
    *(v42 + 16) = 0xD000000000000028;
    *(v42 + 24) = 0x80000001E1B797C0;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 0u;
    *(v42 + 72) = 25186;
    *(v42 + 80) = 0xE200000000000000;
    *(v42 + 64) = 0;
    v48 = MEMORY[0x1E69E7CC0];
    *(v42 + 104) = MEMORY[0x1E69E7CC0];
    *&v77 = 25186;
    *(&v77 + 1) = 0xE200000000000000;
    v49 = Artwork.Crop.preferredContentMode.getter();
    sub_1E1308058(v41, &unk_1ECEB1770, &unk_1E1AFED20);
    *(v42 + 88) = v49;
    *(v42 + 96) = 3;
    type metadata accessor for Banner();
    v16 = swift_allocObject();
    sub_1E134FD1C(&v80, &v77, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v78 + 1))
    {
      v50 = v78;
      *(v16 + 104) = v77;
      *(v16 + 120) = v50;
      *(v16 + 136) = v79;
      v51 = v68;
      v52 = v68;
    }

    else
    {
      v51 = v68;
      v57 = v68;
      sub_1E1AEFE9C();
      v58 = sub_1E1AEFE7C();
      v60 = v59;
      v46(v47, v74);
      v75 = v58;
      v76 = v60;
      sub_1E1AF6F6C();
      sub_1E1308058(&v77, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    sub_1E1308058(&v80, &unk_1ECEB5670, qword_1E1B03EC0);
    v61 = object;
    *(v16 + 16) = countAndFlagsBits;
    *(v16 + 24) = v61;
    *(v16 + 32) = 0;
    *(v16 + 40) = v48;
    *(v16 + 48) = v42;
    *(v16 + 56) = 0;
    *(v16 + 64) = v51;
    *(v16 + 72) = 1;
  }

  else
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v53._object = 0x80000001E1B794E0;
    v53._countAndFlagsBits = 0xD000000000000017;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    v55 = localizedString(_:comment:)(v53, v54);
    type metadata accessor for Banner();
    v16 = swift_allocObject();
    sub_1E134FD1C(&v80, &v77, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v78 + 1))
    {
      v56 = v78;
      *(v16 + 104) = v77;
      *(v16 + 120) = v56;
      *(v16 + 136) = v79;
    }

    else
    {
      v62 = v72;
      sub_1E1AEFE9C();
      v63 = sub_1E1AEFE7C();
      v65 = v64;
      (*(v70 + 8))(v62, v74);
      v75 = v63;
      v76 = v65;
      sub_1E1AF6F6C();
      sub_1E1308058(&v77, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    sub_1E1308058(&v80, &unk_1ECEB5670, qword_1E1B03EC0);
    v66 = MEMORY[0x1E69E7CC0];
    *(v16 + 16) = v55;
    *(v16 + 32) = 0;
    *(v16 + 40) = v66;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    *(v16 + 48) = 0;
    *(v16 + 72) = 0;
  }

  *(v16 + 80) = xmmword_1E1B04490;
  *(v16 + 96) = 2;
  return v16;
}

void *sub_1E1859F5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + qword_1EE1D3C40);
  v10 = *(v2 + qword_1EE1D3C40 + 24);
  v11 = *(v2 + qword_1EE1D3C40 + 32);
  v12 = __swift_project_boxed_opaque_existential_1Tm((v2 + qword_1EE1D3C40), v10);
  v13 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v86 - v15;
  (*(v13 + 16))(v86 - v15, v14);
  LOBYTE(v11) = (*(v11 + 40))(v10, v11);
  (*(v13 + 8))(v16, v10);
  if (v11)
  {
  }

  v86[0] = a1;
  v17 = v9[3];
  v18 = v9[4];
  v19 = __swift_project_boxed_opaque_existential_1Tm(v9, v17);
  v20 = *(v17 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  LOBYTE(v18) = (*(v18 + 48))(v17, v18);
  (*(v20 + 8))(v23, v17);
  if ((v18 & 1) == 0)
  {
  }

  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v24 = sub_1E1AF055C();
  *(&v91 + 1) = v24;
  v92 = sub_1E185E810(&qword_1ECEB7FB8, MEMORY[0x1E699C030], MEMORY[0x1E699C028]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v90);
  (*(*(v24 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E699C020], v24);
  LOBYTE(v24) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&v90);
  v26 = ". Incompatible contentTypes";
  if (v24)
  {
    v26 = "OFFER_MANAGED_ID_BANNER";
    v27 = 0xD00000000000001FLL;
  }

  else
  {
    v27 = 0xD000000000000017;
  }

  v28 = v26 | 0x8000000000000000;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30 = localizedString(_:comment:)(*&v27, v29);
  type metadata accessor for Banner();
  v31 = swift_allocObject();
  sub_1E134FD1C(&v93, &v87, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {
    sub_1E1AEFE9C();
    v32 = sub_1E1AEFE7C();
    v34 = v33;
    (*(v6 + 8))(v8, v5);
    v86[1] = v32;
    v86[2] = v34;
    sub_1E1AF6F6C();
    sub_1E1308058(&v87, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(&v93, &unk_1ECEB5670, qword_1E1B03EC0);
  v35 = 0;
  v36 = v91;
  *(v31 + 104) = v90;
  *(v31 + 120) = v36;
  *(v31 + 136) = v92;
  *(v31 + 16) = v30;
  v37 = MEMORY[0x1E69E7CC0];
  *(v31 + 32) = 0;
  *(v31 + 40) = v37;
  *(v31 + 56) = 0;
  *(v31 + 64) = 0;
  *(v31 + 48) = 0;
  *(v31 + 72) = 0;
  *(v31 + 80) = xmmword_1E1B04490;
  *(v31 + 96) = 2;
  v38 = MEMORY[0x1E69E7CC8];
  do
  {
    v39 = byte_1F5C20BC0[v35 + 32];
    sub_1E1300B24(v9, &v93);
    __swift_project_boxed_opaque_existential_1Tm(&v93, *(&v94 + 1));
    LOBYTE(v90) = v39;
    v40 = RestrictionsProtocol.doesAllow(_:properties:)(&v90, a2);
    __swift_destroy_boxed_opaque_existential_1(&v93);
    if (v40)
    {
      goto LABEL_12;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93 = v38;
    v42 = sub_1E130A768(v39);
    v44 = *(v38 + 16);
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_72;
    }

    v48 = v43;
    if (*(v38 + 24) >= v47)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = v42;
        sub_1E141AA7C();
        v42 = v52;
        v38 = v93;
        if (v48)
        {
LABEL_11:
          *(*(v38 + 56) + 8 * v42) = v31;

          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_1E1691BBC(v47, isUniquelyReferenced_nonNull_native);
      v42 = sub_1E130A768(v39);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_74;
      }
    }

    v38 = v93;
    if (v48)
    {
      goto LABEL_11;
    }

LABEL_20:
    *(v38 + 8 * (v42 >> 6) + 64) |= 1 << v42;
    *(*(v38 + 48) + v42) = v39;
    *(*(v38 + 56) + 8 * v42) = v31;
    v50 = *(v38 + 16);
    v46 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v46)
    {
      goto LABEL_73;
    }

    *(v38 + 16) = v51;
LABEL_12:
    ++v35;
  }

  while (v35 != 4);
  v53 = 0;
  v54 = 1 << *(v38 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v38 + 64);
  v57 = (v54 + 63) >> 6;
  v58 = v86[0];
  while (v56)
  {
    v59 = v53;
LABEL_33:
    v60 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    if (*(*(v38 + 56) + ((v59 << 9) | (8 * v60))))
    {
      if (*(v38 + 16))
      {
        v61 = sub_1E130A768(0);
        if (v62)
        {
          v63 = (*(v38 + 56) + 8 * v61);
          goto LABEL_41;
        }
      }

      v65 = *(v58 + qword_1EE216948);
      if (v65)
      {
        v63 = (v65 + 16);
LABEL_41:
        v66 = *v63;
      }

      else
      {
        v66 = 0;
      }

      if (*(v38 + 16))
      {
        v67 = sub_1E130A768(0);
        if (v68)
        {
          v69 = (*(v38 + 56) + 8 * v67);
          goto LABEL_48;
        }
      }

      v70 = *(v58 + qword_1EE216948);
      if (v70)
      {
        v69 = (v70 + 24);
LABEL_48:
        v71 = *v69;
      }

      else
      {
        v71 = 0;
      }

      if (*(v38 + 16))
      {
        v72 = sub_1E130A768(1);
        if (v73)
        {
          v74 = (*(v38 + 56) + 8 * v72);
          goto LABEL_55;
        }
      }

      v75 = *(v58 + qword_1EE216948);
      if (v75)
      {
        v74 = (v75 + 32);
LABEL_55:
        v76 = *v74;
      }

      else
      {
        v76 = 0;
      }

      if (*(v38 + 16))
      {
        v77 = sub_1E130A768(2);
        if (v78)
        {
          v79 = (*(v38 + 56) + 8 * v77);
          goto LABEL_62;
        }
      }

      v80 = *(v58 + qword_1EE216948);
      if (v80)
      {
        v79 = (v80 + 40);
LABEL_62:
        v81 = *v79;
      }

      else
      {
        v81 = 0;
      }

      if (*(v38 + 16) && (v82 = sub_1E130A768(3), (v83 & 1) != 0))
      {
        v84 = *(*(v38 + 56) + 8 * v82);
      }

      else
      {

        v85 = *(v58 + qword_1EE216948);
        if (v85)
        {
          v84 = *(v85 + 48);
        }

        else
        {
          v84 = 0;
        }
      }

      type metadata accessor for AppStateBanner();
      result = swift_allocObject();
      result[2] = v66;
      result[3] = v71;
      result[4] = v76;
      result[5] = v81;
      result[6] = v84;
      return result;
    }
  }

  while (1)
  {
    v59 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v59 >= v57)
    {
    }

    v56 = *(v38 + 64 + 8 * v59);
    ++v53;
    if (v56)
    {
      v53 = v59;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E185A824(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1E1AEFCCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA288, &qword_1E1B39738);
  v10 = sub_1E1AF588C();
  if (*(v1 + 16) == 12)
  {
    v11 = *(v1 + 72);
    if (*(v11 + 16))
    {
      v12 = sub_1E13018F8(0xD00000000000001BLL, 0x80000001E1B74260);
      if (v13)
      {
        sub_1E137A5C4(*(v11 + 56) + 32 * v12, &v38);
        sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          v14 = v42;
          v37 = [v42 integerValue];

          if (*(v11 + 16))
          {
            v15 = sub_1E13018F8(0xD000000000000022, 0x80000001E1B74280);
            if (v16)
            {
              sub_1E137A5C4(*(v11 + 56) + 32 * v15, &v38);
              if (swift_dynamicCast())
              {
                v17 = v42;
                v18 = [v42 integerValue];

                if (*(v11 + 16))
                {
                  v19 = sub_1E13018F8(0x64496D616461, 0xE600000000000000);
                  if (v20)
                  {
                    sub_1E137A5C4(*(v11 + 56) + 32 * v19, &v38);
                    if (swift_dynamicCast())
                    {
                      v36 = v18;
                      v22 = v42;
                      v21 = v43;
                      v38 = 0;
                      v39 = 0xE000000000000000;
                      sub_1E1AF6FEC();
                      MEMORY[0x1E68FECA0](0xD000000000000059, 0x80000001E1B79830);
                      MEMORY[0x1E68FECA0](v22, v21);

                      sub_1E1AEFCAC();

                      if ((*(v7 + 48))(v5, 1, v6) != 1)
                      {
                        (*(v7 + 32))(v9, v5, v6);
                        type metadata accessor for JSIntentDispatcher();
                        sub_1E1AF421C();
                        sub_1E1AF55EC();
                        v35 = v38;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68, &unk_1E1B36440);
                        v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0, &qword_1E1B19AF0) - 8);
                        v25 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
                        v26 = swift_allocObject();
                        *(v26 + 16) = xmmword_1E1B02CC0;
                        v27 = v26 + v25;
                        v28 = v24[14];
                        v38 = 0xD000000000000015;
                        v39 = 0x80000001E1B79890;
                        sub_1E1AF6F6C();
                        (*(v7 + 16))(v27 + v28, v9, v6);
                        v29 = sub_1E159DE84(v26);
                        swift_setDeallocating();
                        sub_1E1308058(v27, &unk_1ECEB5CC0, &qword_1E1B19AF0);
                        swift_deallocClassInstance();
                        sub_1E1367B40(v29, a1, "AppStoreKit/ProductDiffablePageContentPresenter.swift", 53, 2);

                        v30 = swift_allocObject();
                        swift_weakInit();
                        v31 = swift_allocObject();
                        v31[2] = v30;
                        v31[3] = v10;
                        v31[4] = 0xD000000000000015;
                        v31[5] = 0x80000001E1B79890;
                        v32 = v37;
                        v31[6] = v36;
                        v31[7] = v32;
                        v33 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
                        swift_retain_n();
                        v34 = sub_1E1AF68EC();
                        v40 = v33;
                        v41 = MEMORY[0x1E69AB720];
                        v38 = v34;
                        sub_1E1AF57FC();

                        (*(v7 + 8))(v9, v6);
                        __swift_destroy_boxed_opaque_existential_1(&v38);
                        return v10;
                      }

                      sub_1E1308058(v5, &unk_1ECEB4B60, &unk_1E1B02620);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v38 = 0;
    sub_1E1AF586C();
  }

  else
  {
    v38 = v1;

    sub_1E1AF586C();
  }

  return v10;
}